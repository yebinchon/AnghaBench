
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fb_info {struct arkfb_info* par; } ;
struct TYPE_2__ {int vgabase; } ;
struct arkfb_info {TYPE_1__ state; } ;


 int * dac_regs ;
 int vga_r (int ,int ) ;
 int vga_rseq (int ,int) ;
 int vga_wseq (int ,int,int) ;

__attribute__((used)) static void ark_dac_read_regs(void *data, u8 *code, int count)
{
 struct fb_info *info = data;
 struct arkfb_info *par;
 u8 regval;

 par = info->par;
 regval = vga_rseq(par->state.vgabase, 0x1C);
 while (count != 0)
 {
  vga_wseq(par->state.vgabase, 0x1C, regval | (code[0] & 4 ? 0x80 : 0));
  code[1] = vga_r(par->state.vgabase, dac_regs[code[0] & 3]);
  count--;
  code += 2;
 }

 vga_wseq(par->state.vgabase, 0x1C, regval);
}
