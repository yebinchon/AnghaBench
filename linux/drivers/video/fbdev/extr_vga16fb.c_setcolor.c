
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_D ;
 int VGA_GFX_SR_VALUE ;
 int vga_io_rgfx (int ) ;
 int vga_io_w (int ,int) ;

__attribute__((used)) static inline int setcolor(int color)
{
 int oldcolor;

 oldcolor = vga_io_rgfx(VGA_GFX_SR_VALUE);
 vga_io_w(VGA_GFX_D, color);
 return oldcolor;
}
