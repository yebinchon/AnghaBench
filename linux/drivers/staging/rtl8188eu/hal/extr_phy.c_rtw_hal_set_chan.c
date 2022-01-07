
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hal_data_8188e {void* CurrentChannel; } ;
struct adapter {int bSurpriseRemoved; int bDriverStopped; struct hal_data_8188e* HalData; } ;


 int phy_sw_chnl_callback (struct adapter*,void*) ;

void rtw_hal_set_chan(struct adapter *adapt, u8 channel)
{
 struct hal_data_8188e *hal_data = adapt->HalData;
 u8 tmpchannel = hal_data->CurrentChannel;

 if (channel == 0)
  channel = 1;

 hal_data->CurrentChannel = channel;

 if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
  phy_sw_chnl_callback(adapt, channel);
 else
  hal_data->CurrentChannel = tmpchannel;
}
