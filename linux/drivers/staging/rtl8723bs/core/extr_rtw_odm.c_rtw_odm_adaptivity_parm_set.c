
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int ForceEDCCA; void* IGI_LowerBound; void* AdapEn_RSSI; void* IGI_Base; void* TH_EDCCA_HL_diff; void* TH_L2H_ini; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef void* s8 ;
typedef TYPE_1__ DM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

void rtw_odm_adaptivity_parm_set(struct adapter *adapter, s8 TH_L2H_ini,
     s8 TH_EDCCA_HL_diff, s8 IGI_Base,
     bool ForceEDCCA, u8 AdapEn_RSSI,
     u8 IGI_LowerBound)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(adapter);
 DM_ODM_T *odm = &pHalData->odmpriv;

 odm->TH_L2H_ini = TH_L2H_ini;
 odm->TH_EDCCA_HL_diff = TH_EDCCA_HL_diff;
 odm->IGI_Base = IGI_Base;
 odm->ForceEDCCA = ForceEDCCA;
 odm->AdapEn_RSSI = AdapEn_RSSI;
 odm->IGI_LowerBound = IGI_LowerBound;
}
