
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gxfb_par {scalar_t__ enable_crt; } ;
struct TYPE_2__ {int sync; } ;
struct fb_info {TYPE_1__ var; struct gxfb_par* par; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int VP_DCFG ;
 int VP_DCFG_CRT_EN ;
 int VP_DCFG_CRT_HSYNC_POL ;
 int VP_DCFG_CRT_SYNC_SKW ;
 int VP_DCFG_CRT_SYNC_SKW_DEFAULT ;
 int VP_DCFG_CRT_VSYNC_POL ;
 int VP_DCFG_DAC_BL_EN ;
 int VP_DCFG_HSYNC_EN ;
 int VP_DCFG_VSYNC_EN ;
 int VP_MISC ;
 int VP_MISC_APWRDN ;
 int VP_MISC_DACPWRDN ;
 int VP_MISC_GAM_EN ;
 int gx_configure_tft (struct fb_info*) ;
 int read_vp (struct gxfb_par*,int ) ;
 int write_vp (struct gxfb_par*,int ,int) ;

void gx_configure_display(struct fb_info *info)
{
 struct gxfb_par *par = info->par;
 u32 dcfg, misc;


 dcfg = read_vp(par, VP_DCFG);


 dcfg &= ~(VP_DCFG_VSYNC_EN | VP_DCFG_HSYNC_EN);
 write_vp(par, VP_DCFG, dcfg);


 dcfg &= ~(VP_DCFG_CRT_SYNC_SKW
    | VP_DCFG_CRT_HSYNC_POL | VP_DCFG_CRT_VSYNC_POL
    | VP_DCFG_VSYNC_EN | VP_DCFG_HSYNC_EN);


 dcfg |= VP_DCFG_CRT_SYNC_SKW_DEFAULT;


 dcfg |= VP_DCFG_HSYNC_EN | VP_DCFG_VSYNC_EN;

 misc = read_vp(par, VP_MISC);


 misc |= VP_MISC_GAM_EN;

 if (par->enable_crt) {


  misc &= ~(VP_MISC_APWRDN | VP_MISC_DACPWRDN);
  write_vp(par, VP_MISC, misc);




  if (!(info->var.sync & FB_SYNC_HOR_HIGH_ACT))
   dcfg |= VP_DCFG_CRT_HSYNC_POL;
  if (!(info->var.sync & FB_SYNC_VERT_HIGH_ACT))
   dcfg |= VP_DCFG_CRT_VSYNC_POL;
 } else {

  misc |= (VP_MISC_APWRDN | VP_MISC_DACPWRDN);
  write_vp(par, VP_MISC, misc);
 }




 dcfg |= VP_DCFG_CRT_EN | VP_DCFG_DAC_BL_EN;



 write_vp(par, VP_DCFG, dcfg);



 if (par->enable_crt == 0)
  gx_configure_tft(info);
}
