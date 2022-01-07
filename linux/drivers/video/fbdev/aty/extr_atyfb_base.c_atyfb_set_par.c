
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fb_var_screeninfo {int bits_per_pixel; int accel_flags; scalar_t__ xres; scalar_t__ hsync_len; scalar_t__ left_margin; scalar_t__ yres; scalar_t__ lower_margin; scalar_t__ vsync_len; int xres_virtual; int upper_margin; int right_margin; int yres_virtual; } ;
struct TYPE_8__ {int smem_start; int visual; int line_length; } ;
struct fb_info {TYPE_1__ fix; int flags; TYPE_2__* fbops; struct fb_var_screeninfo var; scalar_t__ par; } ;
struct TYPE_12__ {int gen_cntl; int h_tot_disp; int v_tot_disp; int vxres; } ;
struct atyfb_par {int accel_flags; int mem_refresh_rate; scalar_t__ lcd_table; TYPE_5__ crtc; scalar_t__ aux_start; int pll; TYPE_4__* pll_ops; TYPE_3__* dac_ops; scalar_t__ blitter_may_be_busy; scalar_t__ asleep; } ;
typedef int debug ;
struct TYPE_11__ {int (* var_to_pll ) (struct fb_info*,scalar_t__,int,int *) ;scalar_t__ (* pll_to_var ) (struct fb_info*,int *) ;int (* set_pll ) (struct fb_info*,int *) ;} ;
struct TYPE_10__ {int (* set_dac ) (struct fb_info*,int *,int,int) ;} ;
struct TYPE_9__ {int * fb_sync; } ;


 int BUS_APER_REG_DIS ;
 int BUS_CNTL ;
 int CRTC_DBL_SCAN_EN ;
 int CRTC_INTERLACE_EN ;
 int CT_BUS ;
 int DAC_CNTL ;
 int DAC_MASK ;
 int DPRINTK (char*,...) ;
 int EINVAL ;
 int EXT_MEM_CNTL ;
 int EXT_VERT_STRETCH ;
 int FBINFO_HWACCEL_DISABLED ;
 int FB_ACCELF_TEXT ;
 int FB_VISUAL_DIRECTCOLOR ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int INTEGRATED ;
 int LT_LCD_REGS ;
 scalar_t__ M64_HAS (int ) ;
 int MAGIC_POSTDIV ;
 int MEM_CNTL ;
 int MOBIL_BUS ;
 int POWER_MANAGEMENT ;
 int PRINTKE (char*) ;
 int VT_BUS ;
 int aty_crtc_to_var (TYPE_5__*,struct fb_var_screeninfo*) ;
 int aty_init_engine (struct atyfb_par*,struct fb_info*) ;
 int aty_ld_lcd (int,struct atyfb_par*) ;
 int aty_ld_le32 (int,struct atyfb_par*) ;
 int aty_ld_pll_ct (int,struct atyfb_par*) ;
 int aty_set_crtc (struct atyfb_par*,TYPE_5__*) ;
 int aty_st_8 (int ,int,struct atyfb_par*) ;
 int aty_st_le32 (int,scalar_t__,struct atyfb_par*) ;
 int aty_var_to_crtc (struct fb_info*,struct fb_var_screeninfo*,TYPE_5__*) ;
 scalar_t__ atyfb_get_pixclock (struct fb_var_screeninfo*,struct atyfb_par*) ;
 int * atyfb_sync ;
 int btext_update_display (int ,int,int,int,int) ;
 int calc_line_length (struct atyfb_par*,int ,int) ;
 int * lt_lcd_regs ;
 int memset (struct fb_var_screeninfo*,int ,int) ;
 int pr_cont (char*,...) ;
 int printk (char*,...) ;
 int stub1 (struct fb_info*,scalar_t__,int,int *) ;
 int stub2 (struct fb_info*,int *,int,int) ;
 int stub3 (struct fb_info*,int *) ;
 scalar_t__ stub4 (struct fb_info*,int *) ;
 int wait_for_idle (struct atyfb_par*) ;

__attribute__((used)) static int atyfb_set_par(struct fb_info *info)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 struct fb_var_screeninfo *var = &info->var;
 u32 tmp, pixclock;
 int err;




 if (par->asleep)
  return 0;

 err = aty_var_to_crtc(info, var, &par->crtc);
 if (err)
  return err;

 pixclock = atyfb_get_pixclock(var, par);

 if (pixclock == 0) {
  PRINTKE("Invalid pixclock\n");
  return -EINVAL;
 } else {
  err = par->pll_ops->var_to_pll(info, pixclock,
            var->bits_per_pixel, &par->pll);
  if (err)
   return err;
 }

 par->accel_flags = var->accel_flags;

 if (var->accel_flags) {
  info->fbops->fb_sync = atyfb_sync;
  info->flags &= ~FBINFO_HWACCEL_DISABLED;
 } else {
  info->fbops->fb_sync = ((void*)0);
  info->flags |= FBINFO_HWACCEL_DISABLED;
 }

 if (par->blitter_may_be_busy)
  wait_for_idle(par);

 aty_set_crtc(par, &par->crtc);
 par->dac_ops->set_dac(info, &par->pll,
         var->bits_per_pixel, par->accel_flags);
 par->pll_ops->set_pll(info, &par->pll);
 if (!M64_HAS(INTEGRATED)) {

  tmp = aty_ld_le32(MEM_CNTL, par) & 0xf0ffffff;
  switch (var->bits_per_pixel) {
  case 8:
   tmp |= 0x02000000;
   break;
  case 16:
   tmp |= 0x03000000;
   break;
  case 32:
   tmp |= 0x06000000;
   break;
  }
  aty_st_le32(MEM_CNTL, tmp, par);
 } else {
  tmp = aty_ld_le32(MEM_CNTL, par) & 0xf00fffff;
  if (!M64_HAS(MAGIC_POSTDIV))
   tmp |= par->mem_refresh_rate << 20;
  switch (var->bits_per_pixel) {
  case 8:
  case 24:
   tmp |= 0x00000000;
   break;
  case 16:
   tmp |= 0x04000000;
   break;
  case 32:
   tmp |= 0x08000000;
   break;
  }
  if (M64_HAS(CT_BUS)) {
   aty_st_le32(DAC_CNTL, 0x87010184, par);
   aty_st_le32(BUS_CNTL, 0x680000f9, par);
  } else if (M64_HAS(VT_BUS)) {
   aty_st_le32(DAC_CNTL, 0x87010184, par);
   aty_st_le32(BUS_CNTL, 0x680000f9, par);
  } else if (M64_HAS(MOBIL_BUS)) {
   aty_st_le32(DAC_CNTL, 0x80010102, par);
   aty_st_le32(BUS_CNTL, 0x7b33a040 | (par->aux_start ? BUS_APER_REG_DIS : 0), par);
  } else {

   aty_st_le32(DAC_CNTL, 0x86010102, par);
   aty_st_le32(BUS_CNTL, 0x7b23a040 | (par->aux_start ? BUS_APER_REG_DIS : 0), par);
   aty_st_le32(EXT_MEM_CNTL, aty_ld_le32(EXT_MEM_CNTL, par) | 0x5000001, par);
  }
  aty_st_le32(MEM_CNTL, tmp, par);
 }
 aty_st_8(DAC_MASK, 0xff, par);

 info->fix.line_length = calc_line_length(par, var->xres_virtual,
       var->bits_per_pixel);

 info->fix.visual = var->bits_per_pixel <= 8 ?
  FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_DIRECTCOLOR;


 if (par->accel_flags & FB_ACCELF_TEXT)
  aty_init_engine(par, info);
 return 0;
}
