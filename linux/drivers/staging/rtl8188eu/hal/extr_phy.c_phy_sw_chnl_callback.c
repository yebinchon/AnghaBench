
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hal_data_8188e {int* RfRegChnlVal; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int RF_CHNLBW ;
 int bRFRegOffsetMask ;
 int phy_set_rf_reg (struct adapter*,int ,int,int ,int) ;
 int phy_set_tx_power_level (struct adapter*,int) ;

__attribute__((used)) static void phy_sw_chnl_callback(struct adapter *adapt, u8 channel)
{
 u32 param1, param2;
 struct hal_data_8188e *hal_data = adapt->HalData;

 phy_set_tx_power_level(adapt, channel);

 param1 = RF_CHNLBW;
 param2 = channel;
 hal_data->RfRegChnlVal[0] = (hal_data->RfRegChnlVal[0] &
       0xfffffc00) | param2;
 phy_set_rf_reg(adapt, 0, param1,
         bRFRegOffsetMask, hal_data->RfRegChnlVal[0]);
}
