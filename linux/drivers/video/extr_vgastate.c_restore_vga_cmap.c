
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgastate {int vgabase; scalar_t__ vidstate; } ;
struct regstate {int* vga_cmap; } ;


 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int VGA_PEL_MSK ;
 int vga_w (int ,int ,int) ;

__attribute__((used)) static void restore_vga_cmap(struct vgastate *state)
{
 struct regstate *saved = (struct regstate *) state->vidstate;
 int i;

 vga_w(state->vgabase, VGA_PEL_MSK, 0xff);


 vga_w(state->vgabase, VGA_PEL_IW, 0x00);
 for (i = 0; i < 768; i++)
  vga_w(state->vgabase, VGA_PEL_D, saved->vga_cmap[i]);
}
