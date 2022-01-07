
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_data_8188e {int CurrentChannelBW; unsigned char nCur40MhzPrimeSC; } ;
struct adapter {int bSurpriseRemoved; int bDriverStopped; struct hal_data_8188e* HalData; } ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;


 int phy_set_bw_mode_callback (struct adapter*) ;

void rtw_hal_set_bwmode(struct adapter *adapt, enum ht_channel_width bandwidth,
       unsigned char offset)
{
 struct hal_data_8188e *hal_data = adapt->HalData;
 enum ht_channel_width tmp_bw = hal_data->CurrentChannelBW;

 hal_data->CurrentChannelBW = bandwidth;
 hal_data->nCur40MhzPrimeSC = offset;

 if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
  phy_set_bw_mode_callback(adapt);
 else
  hal_data->CurrentChannelBW = tmp_bw;
}
