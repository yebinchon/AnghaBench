
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct post_pll_config {int postdiv; int prediv; int fbdiv; } ;
struct phy_config {int* regs; int tmdsclock; } ;
struct inno_hdmi_phy {int dev; int sysclk; } ;


 int RK3328_BANDGAP_ENABLE ;
 int RK3328_BYPASS_TERM_RESISTOR_CALIB ;
 int RK3328_ESD_DETECT_340MV ;
 int RK3328_ESD_DETECT_MASK ;
 int RK3328_INT_TMDS_CLK (int ) ;
 int RK3328_INT_TMDS_D0 (int ) ;
 int RK3328_INT_TMDS_D1 (int ) ;
 int RK3328_INT_TMDS_D2 (int ) ;
 int RK3328_INT_VSS_AGND_ESD_DET ;
 int RK3328_PDATA_EN ;
 int RK3328_POST_PLL_FB_DIV_7_0 (int ) ;
 int RK3328_POST_PLL_FB_DIV_8 (int ) ;
 int RK3328_POST_PLL_LOCK_STATUS ;
 int RK3328_POST_PLL_POST_DIV_ENABLE ;
 int RK3328_POST_PLL_POST_DIV_MASK ;
 int RK3328_POST_PLL_POWER_DOWN ;
 int RK3328_POST_PLL_PRE_DIV (int ) ;
 int RK3328_POST_PLL_REFCLK_SEL_TMDS ;
 int RK3328_TERM_RESISTOR_100 ;
 int RK3328_TERM_RESISTOR_CALIB_SPEED_14_8 (int) ;
 int RK3328_TERM_RESISTOR_CALIB_SPEED_7_0 (int) ;
 int RK3328_TMDS_DRIVER_ENABLE ;
 int RK3328_TMDS_TERM_RESIST_150 ;
 int RK3328_TMDS_TERM_RESIST_75 ;
 int RK3328_TMDS_TERM_RESIST_MASK ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int inno_poll (struct inno_hdmi_phy*,int,int,int,int,int) ;
 int inno_update_bits (struct inno_hdmi_phy*,int,int,int) ;
 int inno_write (struct inno_hdmi_phy*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int
inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
         const struct post_pll_config *cfg,
         const struct phy_config *phy_cfg)
{
 int ret;
 u32 v;

 inno_update_bits(inno, 0x02, RK3328_PDATA_EN, 0);
 inno_update_bits(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN,
    RK3328_POST_PLL_POWER_DOWN);

 inno_write(inno, 0xac, RK3328_POST_PLL_FB_DIV_7_0(cfg->fbdiv));
 if (cfg->postdiv == 1) {
  inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS);
  inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
      RK3328_POST_PLL_PRE_DIV(cfg->prediv));
 } else {
  v = (cfg->postdiv / 2) - 1;
  v &= RK3328_POST_PLL_POST_DIV_MASK;
  inno_write(inno, 0xad, v);
  inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
      RK3328_POST_PLL_PRE_DIV(cfg->prediv));
  inno_write(inno, 0xaa, RK3328_POST_PLL_POST_DIV_ENABLE |
      RK3328_POST_PLL_REFCLK_SEL_TMDS);
 }

 for (v = 0; v < 14; v++)
  inno_write(inno, 0xb5 + v, phy_cfg->regs[v]);


 for (v = 0; v < 4; v++)
  inno_update_bits(inno, 0xc8 + v, RK3328_ESD_DETECT_MASK,
     RK3328_ESD_DETECT_340MV);

 if (phy_cfg->tmdsclock > 340000000) {

  v = clk_get_rate(inno->sysclk) / 100000;
  inno_write(inno, 0xc5, RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(v)
      | RK3328_BYPASS_TERM_RESISTOR_CALIB);
  inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
  inno_write(inno, 0xc7, RK3328_TERM_RESISTOR_100);
  inno_update_bits(inno, 0xc5,
     RK3328_BYPASS_TERM_RESISTOR_CALIB, 0);
 } else {
  inno_write(inno, 0xc5, RK3328_BYPASS_TERM_RESISTOR_CALIB);


  if (phy_cfg->tmdsclock > 165000000)
   inno_update_bits(inno, 0xc8,
      RK3328_TMDS_TERM_RESIST_MASK,
      RK3328_TMDS_TERM_RESIST_75 |
      RK3328_TMDS_TERM_RESIST_150);


  for (v = 0; v < 3; v++)
   inno_update_bits(inno, 0xc9 + v,
      RK3328_TMDS_TERM_RESIST_MASK,
      RK3328_TMDS_TERM_RESIST_150);
 }

 inno_update_bits(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN, 0);
 inno_update_bits(inno, 0xb0, RK3328_BANDGAP_ENABLE,
    RK3328_BANDGAP_ENABLE);
 inno_update_bits(inno, 0xb2, RK3328_TMDS_DRIVER_ENABLE,
    RK3328_TMDS_DRIVER_ENABLE);


 ret = inno_poll(inno, 0xaf, v, v & RK3328_POST_PLL_LOCK_STATUS,
   1000, 10000);
 if (ret) {
  dev_err(inno->dev, "Post-PLL locking failed\n");
  return ret;
 }

 if (phy_cfg->tmdsclock > 340000000)
  msleep(100);

 inno_update_bits(inno, 0x02, RK3328_PDATA_EN, RK3328_PDATA_EN);


 inno_write(inno, 0x05, RK3328_INT_TMDS_CLK(RK3328_INT_VSS_AGND_ESD_DET)
     | RK3328_INT_TMDS_D2(RK3328_INT_VSS_AGND_ESD_DET));
 inno_write(inno, 0x07, RK3328_INT_TMDS_D1(RK3328_INT_VSS_AGND_ESD_DET)
     | RK3328_INT_TMDS_D0(RK3328_INT_VSS_AGND_ESD_DET));
 return 0;
}
