org 0x0100

mov al,0x13
int 0x10
les bx,[bx]
Y:
ror bh,1
rol bl,1
X: 
mov ax,0xCCCD
mul di

add dx,bx

xor dx,bx

or dl,dh
mov al,dl
stosb
loop X
out 0x42,al
out 0x61,al
jmp short Y
