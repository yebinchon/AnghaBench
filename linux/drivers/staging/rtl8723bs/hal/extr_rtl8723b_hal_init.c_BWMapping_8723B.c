
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {scalar_t__ bwmode; } ;
struct hal_com_data {scalar_t__ CurrentChannelBW; } ;
struct adapter {int dummy; } ;


 scalar_t__ CHANNEL_WIDTH_40 ;
 scalar_t__ CHANNEL_WIDTH_80 ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

u8 BWMapping_8723B(struct adapter *Adapter, struct pkt_attrib *pattrib)
{
 u8 BWSettingOfDesc = 0;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);



 if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_80) {
  if (pattrib->bwmode == CHANNEL_WIDTH_80)
   BWSettingOfDesc = 2;
  else if (pattrib->bwmode == CHANNEL_WIDTH_40)
   BWSettingOfDesc = 1;
  else
   BWSettingOfDesc = 0;
 } else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_40) {
  if ((pattrib->bwmode == CHANNEL_WIDTH_40) || (pattrib->bwmode == CHANNEL_WIDTH_80))
   BWSettingOfDesc = 1;
  else
   BWSettingOfDesc = 0;
 } else
  BWSettingOfDesc = 0;




 return BWSettingOfDesc;
}
