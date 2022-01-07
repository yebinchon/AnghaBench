
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
 size_t IQK_ADDA_REG_NUM ;
 int ODM_COMP_CALIBRATION ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int PHY_SetBBReg (int ,size_t,int ,size_t) ;
 int bMaskDWord ;

__attribute__((used)) static void _PHY_PathADDAOn8723B(
 struct adapter *padapter,
 u32 *ADDAReg,
 bool is2T
)
{
 u32 pathOn;
 u32 i;
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("ADDA ON.\n"));

 pathOn = 0x01c00014;
 if (!is2T) {
  pathOn = 0x01c00014;
  PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[0], bMaskDWord, 0x01c00014);
 } else {
  PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[0], bMaskDWord, pathOn);
 }

 for (i = 1 ; i < IQK_ADDA_REG_NUM ; i++) {
  PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord, pathOn);
 }

}
