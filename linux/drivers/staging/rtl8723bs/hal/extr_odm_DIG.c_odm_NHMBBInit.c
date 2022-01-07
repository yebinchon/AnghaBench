
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tolerance_cnt; scalar_t__ NHMCurRxOkcnt; scalar_t__ NHMCurTxOkcnt; scalar_t__ NHMLastRxOkcnt; scalar_t__ NHMLastTxOkcnt; scalar_t__ adaptivity_flag; } ;
typedef TYPE_1__* PDM_ODM_T ;



void odm_NHMBBInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

 pDM_Odm->adaptivity_flag = 0;
 pDM_Odm->tolerance_cnt = 3;
 pDM_Odm->NHMLastTxOkcnt = 0;
 pDM_Odm->NHMLastRxOkcnt = 0;
 pDM_Odm->NHMCurTxOkcnt = 0;
 pDM_Odm->NHMCurRxOkcnt = 0;
}
