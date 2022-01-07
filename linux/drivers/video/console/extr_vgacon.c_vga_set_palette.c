
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int* vc_palette; } ;
struct TYPE_2__ {int vgabase; } ;


 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int VGA_PEL_MSK ;
 int vga_w (int ,int ,unsigned char const) ;
 TYPE_1__ vgastate ;

__attribute__((used)) static void vga_set_palette(struct vc_data *vc, const unsigned char *table)
{
 int i, j;

 vga_w(vgastate.vgabase, VGA_PEL_MSK, 0xff);
 for (i = j = 0; i < 16; i++) {
  vga_w(vgastate.vgabase, VGA_PEL_IW, table[i]);
  vga_w(vgastate.vgabase, VGA_PEL_D, vc->vc_palette[j++] >> 2);
  vga_w(vgastate.vgabase, VGA_PEL_D, vc->vc_palette[j++] >> 2);
  vga_w(vgastate.vgabase, VGA_PEL_D, vc->vc_palette[j++] >> 2);
 }
}
