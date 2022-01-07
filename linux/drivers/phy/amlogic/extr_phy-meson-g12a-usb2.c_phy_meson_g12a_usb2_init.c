
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_g12a_usb2_priv {int regmap; int reset; } ;
struct phy {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int PHY_CTRL_R13 ;
 int PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET ;
 int PHY_CTRL_R13_UPDATE_PMA_SIGNALS ;
 int PHY_CTRL_R14 ;
 int PHY_CTRL_R16 ;
 int PHY_CTRL_R16_MPLL_EN ;
 int PHY_CTRL_R16_MPLL_FAST_LOCK ;
 int PHY_CTRL_R16_MPLL_LOAD ;
 int PHY_CTRL_R16_MPLL_LOCK_LONG ;
 int PHY_CTRL_R16_MPLL_M ;
 int PHY_CTRL_R16_MPLL_N ;
 int PHY_CTRL_R16_MPLL_RESET ;
 int PHY_CTRL_R17 ;
 int PHY_CTRL_R17_MPLL_FILTER_PVT1 ;
 int PHY_CTRL_R17_MPLL_FILTER_PVT2 ;
 int PHY_CTRL_R17_MPLL_FRAC_IN ;
 int PHY_CTRL_R17_MPLL_LAMBDA0 ;
 int PHY_CTRL_R17_MPLL_LAMBDA1 ;
 int PHY_CTRL_R18 ;
 int PHY_CTRL_R18_MPLL_ACG_RANGE ;
 int PHY_CTRL_R18_MPLL_ADJ_LDO ;
 int PHY_CTRL_R18_MPLL_ALPHA ;
 int PHY_CTRL_R18_MPLL_BB_MODE ;
 int PHY_CTRL_R18_MPLL_BIAS_ADJ ;
 int PHY_CTRL_R18_MPLL_DATA_SEL ;
 int PHY_CTRL_R18_MPLL_LKW_SEL ;
 int PHY_CTRL_R18_MPLL_LK_S ;
 int PHY_CTRL_R18_MPLL_LK_W ;
 int PHY_CTRL_R18_MPLL_PFD_GAIN ;
 int PHY_CTRL_R18_MPLL_ROU ;
 int PHY_CTRL_R20 ;
 int PHY_CTRL_R20_USB2_BGR_ADJ_4_0 ;
 int PHY_CTRL_R20_USB2_BGR_DBG_1_0 ;
 int PHY_CTRL_R20_USB2_BGR_VREF_4_0 ;
 int PHY_CTRL_R20_USB2_DMON_SEL_3_0 ;
 int PHY_CTRL_R20_USB2_EDGE_DRV_EN ;
 int PHY_CTRL_R20_USB2_EDGE_DRV_TRIM_1_0 ;
 int PHY_CTRL_R20_USB2_OTG_VBUSDET_EN ;
 int PHY_CTRL_R20_USB2_OTG_VBUS_TRIM_2_0 ;
 int PHY_CTRL_R21 ;
 int PHY_CTRL_R21_USB2_OTG_ACA_EN ;
 int PHY_CTRL_R3 ;
 int PHY_CTRL_R3_DISC_THRESH ;
 int PHY_CTRL_R3_HSDIC_REF ;
 int PHY_CTRL_R3_SQUELCH_REF ;
 int PHY_CTRL_R4 ;
 int PHY_CTRL_R4_CALIB_CODE_15_8 ;
 int PHY_CTRL_R4_CALIB_CODE_23_16 ;
 int PHY_CTRL_R4_CALIB_CODE_7_0 ;
 int PHY_CTRL_R4_I_C2L_BIAS_TRIM_1_0 ;
 int PHY_CTRL_R4_I_C2L_BIAS_TRIM_3_2 ;
 int PHY_CTRL_R4_TEST_BYPASS_MODE_EN ;
 int PLL_RESET_COMPLETE_TIME ;
 int RESET_COMPLETE_TIME ;
 struct phy_meson_g12a_usb2_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int reset_control_reset (int ) ;
 int udelay (int ) ;

__attribute__((used)) static int phy_meson_g12a_usb2_init(struct phy *phy)
{
 struct phy_meson_g12a_usb2_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = reset_control_reset(priv->reset);
 if (ret)
  return ret;

 udelay(RESET_COMPLETE_TIME);


 regmap_update_bits(priv->regmap, PHY_CTRL_R21,
      PHY_CTRL_R21_USB2_OTG_ACA_EN, 0);


 regmap_write(priv->regmap, PHY_CTRL_R16,
       FIELD_PREP(PHY_CTRL_R16_MPLL_M, 20) |
       FIELD_PREP(PHY_CTRL_R16_MPLL_N, 1) |
       PHY_CTRL_R16_MPLL_LOAD |
       FIELD_PREP(PHY_CTRL_R16_MPLL_LOCK_LONG, 1) |
       PHY_CTRL_R16_MPLL_FAST_LOCK |
       PHY_CTRL_R16_MPLL_EN |
       PHY_CTRL_R16_MPLL_RESET);

 regmap_write(priv->regmap, PHY_CTRL_R17,
       FIELD_PREP(PHY_CTRL_R17_MPLL_FRAC_IN, 0) |
       FIELD_PREP(PHY_CTRL_R17_MPLL_LAMBDA1, 7) |
       FIELD_PREP(PHY_CTRL_R17_MPLL_LAMBDA0, 7) |
       FIELD_PREP(PHY_CTRL_R17_MPLL_FILTER_PVT2, 2) |
       FIELD_PREP(PHY_CTRL_R17_MPLL_FILTER_PVT1, 9));

 regmap_write(priv->regmap, PHY_CTRL_R18,
       FIELD_PREP(PHY_CTRL_R18_MPLL_LKW_SEL, 1) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_LK_W, 9) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_LK_S, 0x27) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_PFD_GAIN, 1) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_ROU, 7) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_DATA_SEL, 3) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_BIAS_ADJ, 1) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_BB_MODE, 0) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_ALPHA, 3) |
       FIELD_PREP(PHY_CTRL_R18_MPLL_ADJ_LDO, 1) |
       PHY_CTRL_R18_MPLL_ACG_RANGE);

 udelay(PLL_RESET_COMPLETE_TIME);


 regmap_write(priv->regmap, PHY_CTRL_R16,
       FIELD_PREP(PHY_CTRL_R16_MPLL_M, 20) |
       FIELD_PREP(PHY_CTRL_R16_MPLL_N, 1) |
       PHY_CTRL_R16_MPLL_LOAD |
       FIELD_PREP(PHY_CTRL_R16_MPLL_LOCK_LONG, 1) |
       PHY_CTRL_R16_MPLL_FAST_LOCK |
       PHY_CTRL_R16_MPLL_EN);


 regmap_write(priv->regmap, PHY_CTRL_R20,
       FIELD_PREP(PHY_CTRL_R20_USB2_OTG_VBUS_TRIM_2_0, 4) |
       PHY_CTRL_R20_USB2_OTG_VBUSDET_EN |
       FIELD_PREP(PHY_CTRL_R20_USB2_DMON_SEL_3_0, 15) |
       PHY_CTRL_R20_USB2_EDGE_DRV_EN |
       FIELD_PREP(PHY_CTRL_R20_USB2_EDGE_DRV_TRIM_1_0, 3) |
       FIELD_PREP(PHY_CTRL_R20_USB2_BGR_ADJ_4_0, 0) |
       FIELD_PREP(PHY_CTRL_R20_USB2_BGR_VREF_4_0, 0) |
       FIELD_PREP(PHY_CTRL_R20_USB2_BGR_DBG_1_0, 0));

 regmap_write(priv->regmap, PHY_CTRL_R4,
       FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_7_0, 0xf) |
       FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_15_8, 0xf) |
       FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_23_16, 0xf) |
       PHY_CTRL_R4_TEST_BYPASS_MODE_EN |
       FIELD_PREP(PHY_CTRL_R4_I_C2L_BIAS_TRIM_1_0, 0) |
       FIELD_PREP(PHY_CTRL_R4_I_C2L_BIAS_TRIM_3_2, 0));


 regmap_write(priv->regmap, PHY_CTRL_R3,
       FIELD_PREP(PHY_CTRL_R3_SQUELCH_REF, 0) |
       FIELD_PREP(PHY_CTRL_R3_HSDIC_REF, 1) |
       FIELD_PREP(PHY_CTRL_R3_DISC_THRESH, 3));


 regmap_write(priv->regmap, PHY_CTRL_R14, 0);
 regmap_write(priv->regmap, PHY_CTRL_R13,
       PHY_CTRL_R13_UPDATE_PMA_SIGNALS |
       FIELD_PREP(PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET, 7));

 return 0;
}
