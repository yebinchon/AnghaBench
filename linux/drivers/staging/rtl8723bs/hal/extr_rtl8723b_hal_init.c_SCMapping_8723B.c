
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {scalar_t__ bwmode; } ;
struct hal_com_data {scalar_t__ CurrentChannelBW; scalar_t__ nCur80MhzPrimeSC; scalar_t__ nCur40MhzPrimeSC; } ;
struct adapter {int dummy; } ;


 scalar_t__ CHANNEL_WIDTH_20 ;
 scalar_t__ CHANNEL_WIDTH_40 ;
 scalar_t__ CHANNEL_WIDTH_80 ;
 int DBG_871X (char*) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ HAL_PRIME_CHNL_OFFSET_LOWER ;
 scalar_t__ HAL_PRIME_CHNL_OFFSET_UPPER ;
 int VHT_DATA_SC_20_LOWER_OF_80MHZ ;
 int VHT_DATA_SC_20_LOWEST_OF_80MHZ ;
 int VHT_DATA_SC_20_UPPERST_OF_80MHZ ;
 int VHT_DATA_SC_20_UPPER_OF_80MHZ ;
 int VHT_DATA_SC_40_LOWER_OF_80MHZ ;
 int VHT_DATA_SC_40_UPPER_OF_80MHZ ;
 int VHT_DATA_SC_DONOT_CARE ;

u8 SCMapping_8723B(struct adapter *Adapter, struct pkt_attrib *pattrib)
{
 u8 SCSettingOfDesc = 0;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);



 if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_80) {
  if (pattrib->bwmode == CHANNEL_WIDTH_80) {
   SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
  } else if (pattrib->bwmode == CHANNEL_WIDTH_40) {
   if (pHalData->nCur80MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER)
    SCSettingOfDesc = VHT_DATA_SC_40_LOWER_OF_80MHZ;
   else if (pHalData->nCur80MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER)
    SCSettingOfDesc = VHT_DATA_SC_40_UPPER_OF_80MHZ;
   else
    DBG_871X("SCMapping: Not Correct Primary40MHz Setting\n");
  } else {
   if ((pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) && (pHalData->nCur80MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER))
    SCSettingOfDesc = VHT_DATA_SC_20_LOWEST_OF_80MHZ;
   else if ((pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER) && (pHalData->nCur80MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER))
    SCSettingOfDesc = VHT_DATA_SC_20_LOWER_OF_80MHZ;
   else if ((pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) && (pHalData->nCur80MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER))
    SCSettingOfDesc = VHT_DATA_SC_20_UPPER_OF_80MHZ;
   else if ((pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER) && (pHalData->nCur80MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER))
    SCSettingOfDesc = VHT_DATA_SC_20_UPPERST_OF_80MHZ;
   else
    DBG_871X("SCMapping: Not Correct Primary40MHz Setting\n");
  }
 } else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_40) {


  if (pattrib->bwmode == CHANNEL_WIDTH_40) {
   SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
  } else if (pattrib->bwmode == CHANNEL_WIDTH_20) {
   if (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER) {
    SCSettingOfDesc = VHT_DATA_SC_20_UPPER_OF_80MHZ;
   } else if (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) {
    SCSettingOfDesc = VHT_DATA_SC_20_LOWER_OF_80MHZ;
   } else {
    SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
   }
  }
 } else {
  SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
 }

 return SCSettingOfDesc;
}
