
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lxfb_par {int dummy; } ;
struct fb_info {struct lxfb_par* par; } ;


 int DC_CLR_KEY ;
 unsigned int DC_CLR_KEY_CLR_KEY_EN ;
 int DC_DISPLAY_CFG ;
 unsigned int DC_DISPLAY_CFG_TGEN ;
 int DC_GENERAL_CFG ;
 unsigned int DC_GENERAL_CFG_CMPE ;
 unsigned int DC_GENERAL_CFG_DECE ;
 unsigned int DC_GENERAL_CFG_DFLE ;
 unsigned int DC_GENERAL_CFG_VGAE ;
 unsigned int DC_GENERAL_CFG_VIDE ;
 int DC_GENLK_CTL ;
 unsigned int DC_GENLK_CTL_GENLK_EN ;
 int DC_IRQ ;
 unsigned int DC_IRQ_MASK ;
 unsigned int DC_IRQ_STATUS ;
 unsigned int DC_IRQ_VIP_VSYNC_IRQ_STATUS ;
 unsigned int DC_IRQ_VIP_VSYNC_LOSS_IRQ_MASK ;
 int FP_PM ;
 int FP_PM_P ;
 int GP_BLT_STATUS ;
 unsigned int GP_BLT_STATUS_CE ;
 unsigned int GP_BLT_STATUS_PB ;
 int VP_A1T ;
 int VP_A2T ;
 int VP_A3T ;
 int VP_DCFG ;
 unsigned int VP_DCFG_CRT_EN ;
 unsigned int VP_DCFG_DAC_BL_EN ;
 unsigned int VP_DCFG_HSYNC_EN ;
 unsigned int VP_DCFG_VSYNC_EN ;
 int VP_MISC ;
 unsigned int VP_MISC_DACPWRDN ;
 int VP_VCFG ;
 unsigned int VP_VCFG_VID_EN ;
 unsigned int read_dc (struct lxfb_par*,int ) ;
 int read_fp (struct lxfb_par*,int ) ;
 unsigned int read_gp (struct lxfb_par*,int ) ;
 unsigned int read_vp (struct lxfb_par*,int ) ;
 int udelay (int) ;
 int write_dc (struct lxfb_par*,int ,unsigned int) ;
 int write_fp (struct lxfb_par*,int ,int) ;
 int write_vp (struct lxfb_par*,int ,unsigned int) ;

__attribute__((used)) static void lx_graphics_disable(struct fb_info *info)
{
 struct lxfb_par *par = info->par;
 unsigned int val, gcfg;



 write_vp(par, VP_A1T, 0);
 write_vp(par, VP_A2T, 0);
 write_vp(par, VP_A3T, 0);


 val = read_dc(par, DC_GENERAL_CFG) & ~(DC_GENERAL_CFG_VGAE |
   DC_GENERAL_CFG_VIDE);

 write_dc(par, DC_GENERAL_CFG, val);

 val = read_vp(par, VP_VCFG) & ~VP_VCFG_VID_EN;
 write_vp(par, VP_VCFG, val);

 write_dc(par, DC_IRQ, DC_IRQ_MASK | DC_IRQ_VIP_VSYNC_LOSS_IRQ_MASK |
   DC_IRQ_STATUS | DC_IRQ_VIP_VSYNC_IRQ_STATUS);

 val = read_dc(par, DC_GENLK_CTL) & ~DC_GENLK_CTL_GENLK_EN;
 write_dc(par, DC_GENLK_CTL, val);

 val = read_dc(par, DC_CLR_KEY);
 write_dc(par, DC_CLR_KEY, val & ~DC_CLR_KEY_CLR_KEY_EN);


 write_fp(par, FP_PM, read_fp(par, FP_PM) & ~FP_PM_P);

 val = read_vp(par, VP_MISC) | VP_MISC_DACPWRDN;
 write_vp(par, VP_MISC, val);



 val = read_vp(par, VP_DCFG);
 write_vp(par, VP_DCFG, val & ~(VP_DCFG_CRT_EN | VP_DCFG_HSYNC_EN |
   VP_DCFG_VSYNC_EN | VP_DCFG_DAC_BL_EN));

 gcfg = read_dc(par, DC_GENERAL_CFG);
 gcfg &= ~(DC_GENERAL_CFG_CMPE | DC_GENERAL_CFG_DECE);
 write_dc(par, DC_GENERAL_CFG, gcfg);


 val = read_dc(par, DC_DISPLAY_CFG);
 val &= ~DC_DISPLAY_CFG_TGEN;
 write_dc(par, DC_DISPLAY_CFG, val);


 udelay(1000);



 gcfg &= ~DC_GENERAL_CFG_DFLE;
 write_dc(par, DC_GENERAL_CFG, gcfg);



 do {
  val = read_gp(par, GP_BLT_STATUS);
 } while ((val & GP_BLT_STATUS_PB) || !(val & GP_BLT_STATUS_CE));
}
