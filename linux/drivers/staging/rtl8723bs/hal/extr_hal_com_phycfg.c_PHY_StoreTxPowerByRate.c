
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ PhyRegPgVersion; } ;
struct hal_com_data {scalar_t__ rf_type; int pwrGroupCnt; TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int DBG_871X (char*,scalar_t__) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int PHY_StoreTxPowerByRateNew (struct adapter*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int PHY_StoreTxPowerByRateOld (struct adapter*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ RF_1T1R ;
 scalar_t__ rTxAGC_A_Mcs15_Mcs12 ;
 scalar_t__ rTxAGC_B_Mcs15_Mcs12 ;

void PHY_StoreTxPowerByRate(
 struct adapter *padapter,
 u32 Band,
 u32 RfPath,
 u32 TxNum,
 u32 RegAddr,
 u32 BitMask,
 u32 Data
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

 if (pDM_Odm->PhyRegPgVersion > 0)
  PHY_StoreTxPowerByRateNew(padapter, Band, RfPath, TxNum, RegAddr, BitMask, Data);
 else if (pDM_Odm->PhyRegPgVersion == 0) {
  PHY_StoreTxPowerByRateOld(padapter, RegAddr, BitMask, Data);

  if (RegAddr == rTxAGC_A_Mcs15_Mcs12 && pHalData->rf_type == RF_1T1R)
   pHalData->pwrGroupCnt++;
  else if (RegAddr == rTxAGC_B_Mcs15_Mcs12 && pHalData->rf_type != RF_1T1R)
   pHalData->pwrGroupCnt++;
 } else
  DBG_871X("Invalid PHY_REG_PG.txt version %d\n", pDM_Odm->PhyRegPgVersion);

}
