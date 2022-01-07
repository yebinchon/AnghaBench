
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fb_info {struct arkfb_info* par; } ;
struct TYPE_2__ {int vgabase; } ;
struct arkfb_info {TYPE_1__ state; int dac; } ;


 int VGA_MIS_ENB_PLL_LOAD ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int dac_set_freq (int ,int ,int) ;
 int fb_err (struct fb_info*,char*) ;
 int vga_r (int ,int ) ;
 int vga_w (int ,int ,int) ;

__attribute__((used)) static void ark_set_pixclock(struct fb_info *info, u32 pixclock)
{
 struct arkfb_info *par = info->par;
 u8 regval;

 int rv = dac_set_freq(par->dac, 0, 1000000000 / pixclock);
 if (rv < 0) {
  fb_err(info, "cannot set requested pixclock, keeping old value\n");
  return;
 }


 regval = vga_r(par->state.vgabase, VGA_MIS_R);
 vga_w(par->state.vgabase, VGA_MIS_W, regval | VGA_MIS_ENB_PLL_LOAD);
}
