
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {scalar_t__ CurrentBandType; int NumTotalRFPath; } ;
struct adapter {int dummy; } ;


 scalar_t__ BAND_ON_2_4G ;
 int CCK ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HT_MCS0_MCS7 ;
 int HT_MCS8_MCS15 ;
 int OFDM ;
 int PHY_SetTxPowerIndexByRateSection (struct adapter*,int ,int ,int ) ;

void PHY_SetTxPowerLevelByPath(struct adapter *Adapter, u8 channel, u8 path)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 bool bIsIn24G = (pHalData->CurrentBandType == BAND_ON_2_4G);


 {
  if (bIsIn24G)
   PHY_SetTxPowerIndexByRateSection(Adapter, path, channel, CCK);

  PHY_SetTxPowerIndexByRateSection(Adapter, path, channel, OFDM);
  PHY_SetTxPowerIndexByRateSection(Adapter, path, channel, HT_MCS0_MCS7);

  if (pHalData->NumTotalRFPath >= 2)
   PHY_SetTxPowerIndexByRateSection(Adapter, path, channel, HT_MCS8_MCS15);

 }
}
