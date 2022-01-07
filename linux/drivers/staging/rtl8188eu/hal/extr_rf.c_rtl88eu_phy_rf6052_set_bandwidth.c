
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_data_8188e {int* RfRegChnlVal; } ;
struct adapter {struct hal_data_8188e* HalData; } ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;


 int BIT (int) ;


 int RF_CHNLBW ;
 int RF_PATH_A ;
 int bRFRegOffsetMask ;
 int phy_set_rf_reg (struct adapter*,int ,int ,int ,int) ;

void rtl88eu_phy_rf6052_set_bandwidth(struct adapter *adapt,
          enum ht_channel_width bandwidth)
{
 struct hal_data_8188e *hal_data = adapt->HalData;

 switch (bandwidth) {
 case 129:
  hal_data->RfRegChnlVal[0] = ((hal_data->RfRegChnlVal[0] &
           0xfffff3ff) | BIT(10) | BIT(11));
  phy_set_rf_reg(adapt, RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask,
          hal_data->RfRegChnlVal[0]);
  break;
 case 128:
  hal_data->RfRegChnlVal[0] = ((hal_data->RfRegChnlVal[0] &
           0xfffff3ff) | BIT(10));
  phy_set_rf_reg(adapt, RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask,
          hal_data->RfRegChnlVal[0]);
  break;
 default:
  break;
 }
}
