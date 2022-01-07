
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgastate {int vgabase; } ;


 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int VGA_PEL_MSK ;
 int vga_w (int ,int ,int) ;

__attribute__((used)) static void vga_pal_blank(struct vgastate *state)
{
 int i;

 vga_w(state->vgabase, VGA_PEL_MSK, 0xff);
 for (i = 0; i < 16; i++) {
  vga_w(state->vgabase, VGA_PEL_IW, i);
  vga_w(state->vgabase, VGA_PEL_D, 0);
  vga_w(state->vgabase, VGA_PEL_D, 0);
  vga_w(state->vgabase, VGA_PEL_D, 0);
 }
}
