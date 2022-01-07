
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int Adapter; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int ODM_COMP_CALIBRATION ;
 int ODM_CheckPowerStatus (struct adapter*) ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 size_t PHY_QueryBBReg (int ,size_t,int ) ;
 int bMaskDWord ;

__attribute__((used)) static void _PHY_SaveADDARegisters8723B(
 struct adapter *padapter,
 u32 *ADDAReg,
 u32 *ADDABackup,
 u32 RegisterNum
)
{
 u32 i;
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

 if (!ODM_CheckPowerStatus(padapter))
  return;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save ADDA parameters.\n"));
 for (i = 0 ; i < RegisterNum ; i++) {
  ADDABackup[i] = PHY_QueryBBReg(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord);
 }
}
