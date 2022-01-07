
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hal_com_data {int CurrentChannelBW; int nCur40MhzPrimeSC; int nCur80MhzPrimeSC; int bSwChnl; int bSetChnlBW; void* CurrentCenterFrequencyIndex1; void* CurrentChannel; } ;
struct adapter {int bSurpriseRemoved; int bDriverStopped; } ;
typedef enum EXTCHNL_OFFSET { ____Placeholder_EXTCHNL_OFFSET } EXTCHNL_OFFSET ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 int DBG_871X (char*) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ HAL_IsLegalChannel (struct adapter*,void*) ;
 int phy_SwChnlAndSetBwMode8723B (struct adapter*) ;

__attribute__((used)) static void PHY_HandleSwChnlAndSetBW8723B(
 struct adapter *Adapter,
 bool bSwitchChannel,
 bool bSetBandWidth,
 u8 ChannelNum,
 enum CHANNEL_WIDTH ChnlWidth,
 enum EXTCHNL_OFFSET ExtChnlOffsetOf40MHz,
 enum EXTCHNL_OFFSET ExtChnlOffsetOf80MHz,
 u8 CenterFrequencyIndex1
)
{

 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u8 tmpChannel = pHalData->CurrentChannel;
 enum CHANNEL_WIDTH tmpBW = pHalData->CurrentChannelBW;
 u8 tmpnCur40MhzPrimeSC = pHalData->nCur40MhzPrimeSC;
 u8 tmpnCur80MhzPrimeSC = pHalData->nCur80MhzPrimeSC;
 u8 tmpCenterFrequencyIndex1 = pHalData->CurrentCenterFrequencyIndex1;




 if (!bSwitchChannel && !bSetBandWidth) {
  DBG_871X("PHY_HandleSwChnlAndSetBW8812:  not switch channel and not set bandwidth\n");
  return;
 }


 if (bSwitchChannel) {

  {
   if (HAL_IsLegalChannel(Adapter, ChannelNum))
    pHalData->bSwChnl = 1;
  }
 }

 if (bSetBandWidth)
  pHalData->bSetChnlBW = 1;

 if (!pHalData->bSetChnlBW && !pHalData->bSwChnl) {

  return;
 }


 if (pHalData->bSwChnl) {
  pHalData->CurrentChannel = ChannelNum;
  pHalData->CurrentCenterFrequencyIndex1 = ChannelNum;
 }


 if (pHalData->bSetChnlBW) {
  pHalData->CurrentChannelBW = ChnlWidth;
  pHalData->nCur40MhzPrimeSC = ExtChnlOffsetOf40MHz;
  pHalData->nCur80MhzPrimeSC = ExtChnlOffsetOf80MHz;
  pHalData->CurrentCenterFrequencyIndex1 = CenterFrequencyIndex1;
 }


 if ((!Adapter->bDriverStopped) && (!Adapter->bSurpriseRemoved)) {
  phy_SwChnlAndSetBwMode8723B(Adapter);
 } else {
  if (pHalData->bSwChnl) {
   pHalData->CurrentChannel = tmpChannel;
   pHalData->CurrentCenterFrequencyIndex1 = tmpChannel;
  }

  if (pHalData->bSetChnlBW) {
   pHalData->CurrentChannelBW = tmpBW;
   pHalData->nCur40MhzPrimeSC = tmpnCur40MhzPrimeSC;
   pHalData->nCur80MhzPrimeSC = tmpnCur80MhzPrimeSC;
   pHalData->CurrentCenterFrequencyIndex1 = tmpCenterFrequencyIndex1;
  }
 }
}
