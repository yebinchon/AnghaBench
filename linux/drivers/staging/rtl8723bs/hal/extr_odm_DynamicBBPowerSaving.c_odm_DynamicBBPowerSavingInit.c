
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pPS_T ;
struct TYPE_3__ {scalar_t__ initialize; scalar_t__ Rssi_val_min; void* CurRFState; void* PreRFState; void* CurCCAState; void* PreCCAState; } ;
struct TYPE_4__ {TYPE_1__ DM_PSTable; } ;
typedef TYPE_2__* PDM_ODM_T ;


 void* CCA_MAX ;
 void* RF_MAX ;

void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 pPS_T pDM_PSTable = &pDM_Odm->DM_PSTable;

 pDM_PSTable->PreCCAState = CCA_MAX;
 pDM_PSTable->CurCCAState = CCA_MAX;
 pDM_PSTable->PreRFState = RF_MAX;
 pDM_PSTable->CurRFState = RF_MAX;
 pDM_PSTable->Rssi_val_min = 0;
 pDM_PSTable->initialize = 0;
}
