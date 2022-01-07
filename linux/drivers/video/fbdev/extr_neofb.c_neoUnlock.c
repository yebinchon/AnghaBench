
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vgaHWUnlock () ;
 int vga_wgfx (int *,int,int) ;

__attribute__((used)) static void neoUnlock(void)
{
 vgaHWUnlock();
 vga_wgfx(((void*)0), 0x09, 0x26);
}
