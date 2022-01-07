
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hal_com_data {int CurrentChannel; int CurrentChannelBW; } ;
struct TYPE_2__ {int RegPwrTblSel; } ;
struct adapter {TYPE_1__ registrypriv; } ;
typedef scalar_t__ s8 ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 int BAND_ON_2_4G ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ MAX_POWER_INDEX ;
 int ODM_RF_PATH_A ;
 scalar_t__ PHY_GetTxPowerByRate (struct adapter*,int ,int ,int ,int ) ;
 scalar_t__ PHY_GetTxPowerIndexBase (struct adapter*,int ,int ,int,int ,int*) ;
 scalar_t__ PHY_GetTxPowerTrackingOffset (struct adapter*,int ,int ) ;
 int RF_1TX ;
 scalar_t__ phy_get_tx_pwr_lmt (struct adapter*,int ,int ,int ,int ,int ,int ) ;

u8 PHY_GetTxPowerIndex(
 struct adapter *padapter,
 u8 RFPath,
 u8 Rate,
 enum CHANNEL_WIDTH BandWidth,
 u8 Channel
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 s8 txPower = 0, powerDiffByRate = 0, limit = 0;
 bool bIn24G = 0;



 txPower = (s8) PHY_GetTxPowerIndexBase(padapter, RFPath, Rate, BandWidth, Channel, &bIn24G);
 powerDiffByRate = PHY_GetTxPowerByRate(padapter, BAND_ON_2_4G, ODM_RF_PATH_A, RF_1TX, Rate);

 limit = phy_get_tx_pwr_lmt(
  padapter,
  padapter->registrypriv.RegPwrTblSel,
  (u8)(!bIn24G),
  pHalData->CurrentChannelBW,
  RFPath,
  Rate,
  pHalData->CurrentChannel
 );

 powerDiffByRate = powerDiffByRate > limit ? limit : powerDiffByRate;
 txPower += powerDiffByRate;

 txPower += PHY_GetTxPowerTrackingOffset(padapter, RFPath, Rate);

 if (txPower > MAX_POWER_INDEX)
  txPower = MAX_POWER_INDEX;


 return (u8) txPower;
}
