
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vga_rcrt (int *,int) ;
 int vga_wcrt (int *,int,int) ;

__attribute__((used)) static void vgaHWUnlock(void)
{

 vga_wcrt(((void*)0), 0x11, vga_rcrt(((void*)0), 0x11) & ~0x80);
}
