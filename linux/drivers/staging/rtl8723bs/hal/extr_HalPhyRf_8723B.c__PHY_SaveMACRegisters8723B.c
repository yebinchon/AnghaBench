
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int Adapter; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int IQK_MAC_REG_NUM ;
 int ODM_COMP_CALIBRATION ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int rtw_read32 (int ,int) ;
 int rtw_read8 (int ,int) ;

__attribute__((used)) static void _PHY_SaveMACRegisters8723B(
 struct adapter *padapter, u32 *MACReg, u32 *MACBackup
)
{
 u32 i;
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save MAC parameters.\n"));
 for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
  MACBackup[i] = rtw_read8(pDM_Odm->Adapter, MACReg[i]);
 }
 MACBackup[i] = rtw_read32(pDM_Odm->Adapter, MACReg[i]);

}
