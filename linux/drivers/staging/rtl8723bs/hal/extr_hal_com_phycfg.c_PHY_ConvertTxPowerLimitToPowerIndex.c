
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {scalar_t__ PhyRegPgValueType; } ;
struct hal_com_data {scalar_t__***** TxPwrLimit_2_4G; TYPE_1__ odmpriv; } ;
struct TYPE_4__ {int RegPowerBase; } ;
struct adapter {TYPE_2__ registrypriv; } ;
typedef scalar_t__ s8 ;


 int BAND_ON_2_4G ;
 int CCK ;
 size_t CHANNEL_MAX_NUMBER_2G ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HT_MCS0_MCS7 ;
 int HT_MCS16_MCS23 ;
 int HT_MCS24_MCS31 ;
 int HT_MCS8_MCS15 ;
 size_t MAX_2_4G_BANDWITH_NUM ;
 scalar_t__ MAX_POWER_INDEX ;
 size_t MAX_RATE_SECTION_NUM ;
 size_t MAX_REGULATION_NUM ;
 size_t MAX_RF_PATH_NUM ;
 size_t ODM_RF_PATH_A ;
 int OFDM ;
 size_t PHY_GetTxPowerByRateBase (struct adapter*,int ,size_t,int ,int ) ;
 scalar_t__ PHY_REG_PG_EXACT_VALUE ;
 int RF_1TX ;
 int RF_2TX ;
 int RF_3TX ;
 int RF_4TX ;
 int phy_CrossReferenceHTAndVHTTxPowerLimit (struct adapter*) ;

void PHY_ConvertTxPowerLimitToPowerIndex(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u8 BW40PwrBasedBm2_4G = 0x2E;
 u8 regulation, bw, channel, rateSection;
 s8 tempValue = 0, tempPwrLmt = 0;
 u8 rfPath = 0;



 phy_CrossReferenceHTAndVHTTxPowerLimit(Adapter);

 for (regulation = 0; regulation < MAX_REGULATION_NUM; ++regulation) {
  for (bw = 0; bw < MAX_2_4G_BANDWITH_NUM; ++bw) {
   for (channel = 0; channel < CHANNEL_MAX_NUMBER_2G; ++channel) {
    for (rateSection = 0; rateSection < MAX_RATE_SECTION_NUM; ++rateSection) {
     tempPwrLmt = pHalData->TxPwrLimit_2_4G[regulation][bw][rateSection][channel][ODM_RF_PATH_A];

     for (rfPath = ODM_RF_PATH_A; rfPath < MAX_RF_PATH_NUM; ++rfPath) {
      if (pHalData->odmpriv.PhyRegPgValueType == PHY_REG_PG_EXACT_VALUE) {
       if (rateSection == 5)
        BW40PwrBasedBm2_4G = PHY_GetTxPowerByRateBase(Adapter, BAND_ON_2_4G, rfPath, RF_4TX, HT_MCS24_MCS31);
       else if (rateSection == 4)
        BW40PwrBasedBm2_4G = PHY_GetTxPowerByRateBase(Adapter, BAND_ON_2_4G, rfPath, RF_3TX, HT_MCS16_MCS23);
       else if (rateSection == 3)
        BW40PwrBasedBm2_4G = PHY_GetTxPowerByRateBase(Adapter, BAND_ON_2_4G, rfPath, RF_2TX, HT_MCS8_MCS15);
       else if (rateSection == 2)
        BW40PwrBasedBm2_4G = PHY_GetTxPowerByRateBase(Adapter, BAND_ON_2_4G, rfPath, RF_1TX, HT_MCS0_MCS7);
       else if (rateSection == 1)
        BW40PwrBasedBm2_4G = PHY_GetTxPowerByRateBase(Adapter, BAND_ON_2_4G, rfPath, RF_1TX, OFDM);
       else if (rateSection == 0)
        BW40PwrBasedBm2_4G = PHY_GetTxPowerByRateBase(Adapter, BAND_ON_2_4G, rfPath, RF_1TX, CCK);
      } else
       BW40PwrBasedBm2_4G = Adapter->registrypriv.RegPowerBase * 2;

      if (tempPwrLmt != MAX_POWER_INDEX) {
       tempValue = tempPwrLmt - BW40PwrBasedBm2_4G;
       pHalData->TxPwrLimit_2_4G[regulation][bw][rateSection][channel][rfPath] = tempValue;
      }
     }
    }
   }
  }
 }


}
