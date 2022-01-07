
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hal_com_data {int CrystalCap; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

__attribute__((used)) static u8 odm_GetDefaultCrytaltalCap(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 u8 CrystalCap = 0x20;

 struct adapter *Adapter = pDM_Odm->Adapter;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 CrystalCap = pHalData->CrystalCap;

 CrystalCap = CrystalCap & 0x3f;

 return CrystalCap;
}
