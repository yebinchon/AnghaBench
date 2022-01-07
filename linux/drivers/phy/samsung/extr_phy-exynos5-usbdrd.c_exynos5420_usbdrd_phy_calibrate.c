
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos5_usbdrd_phy {int extrefclk; int dev; } ;


 int EXYNOS5_DRD_PHYSS_LANE0_TX_DEBUG ;
 int EXYNOS5_DRD_PHYSS_LOSLEVEL_OVRD_IN ;
 int EXYNOS5_DRD_PHYSS_TX_VBOOSTLEVEL_OVRD_IN ;




 unsigned int LANE0_TX_DEBUG_RXDET_MEAS_TIME_19M2_20M ;
 unsigned int LANE0_TX_DEBUG_RXDET_MEAS_TIME_24M ;
 unsigned int LANE0_TX_DEBUG_RXDET_MEAS_TIME_48M_50M_52M ;
 unsigned int LOSLEVEL_OVRD_IN_EN ;
 unsigned int LOSLEVEL_OVRD_IN_LOS_BIAS_5420 ;
 unsigned int LOSLEVEL_OVRD_IN_LOS_LEVEL_DEFAULT ;
 unsigned int TX_VBOOSTLEVEL_OVRD_IN_VBOOST_5420 ;
 int crport_ctrl_write (struct exynos5_usbdrd_phy*,int ,unsigned int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int exynos5420_usbdrd_phy_calibrate(struct exynos5_usbdrd_phy *phy_drd)
{
 unsigned int temp;
 int ret = 0;







 temp = LOSLEVEL_OVRD_IN_LOS_BIAS_5420 |
  LOSLEVEL_OVRD_IN_EN |
  LOSLEVEL_OVRD_IN_LOS_LEVEL_DEFAULT;
 ret = crport_ctrl_write(phy_drd,
    EXYNOS5_DRD_PHYSS_LOSLEVEL_OVRD_IN,
    temp);
 if (ret) {
  dev_err(phy_drd->dev,
   "Failed setting Loss-of-Signal level for SuperSpeed\n");
  return ret;
 }





 temp = TX_VBOOSTLEVEL_OVRD_IN_VBOOST_5420;
 ret = crport_ctrl_write(phy_drd,
    EXYNOS5_DRD_PHYSS_TX_VBOOSTLEVEL_OVRD_IN,
    temp);
 if (ret) {
  dev_err(phy_drd->dev,
   "Failed setting Tx-Vboost-Level for SuperSpeed\n");
  return ret;
 }
 switch (phy_drd->extrefclk) {
 case 128:
  temp = LANE0_TX_DEBUG_RXDET_MEAS_TIME_48M_50M_52M;
  break;
 case 130:
 case 131:
  temp = LANE0_TX_DEBUG_RXDET_MEAS_TIME_19M2_20M;
  break;
 case 129:
 default:
  temp = LANE0_TX_DEBUG_RXDET_MEAS_TIME_24M;
  break;
 }

 ret = crport_ctrl_write(phy_drd,
    EXYNOS5_DRD_PHYSS_LANE0_TX_DEBUG,
    temp);
 if (ret)
  dev_err(phy_drd->dev,
   "Fail to set RxDet measurement time for SuperSpeed\n");

 return ret;
}
