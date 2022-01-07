
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct hal_com_data {size_t pwrGroupCnt; int ** MCSTxPowerLevelOriginalOffset; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 size_t PHY_GetRateSectionIndexOfTxPowerByRate (struct adapter*,int ,int ) ;

__attribute__((used)) static void PHY_StoreTxPowerByRateOld(
 struct adapter *padapter, u32 RegAddr, u32 BitMask, u32 Data
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u8 index = PHY_GetRateSectionIndexOfTxPowerByRate(padapter, RegAddr, BitMask);

 pHalData->MCSTxPowerLevelOriginalOffset[pHalData->pwrGroupCnt][index] = Data;


}
