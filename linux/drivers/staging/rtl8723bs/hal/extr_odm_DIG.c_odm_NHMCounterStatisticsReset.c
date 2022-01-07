
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int BIT1 ;
 int ODM_REG_NHM_TH9_TH10_11N ;
 int PHY_SetBBReg (int ,int ,int ,int) ;

void odm_NHMCounterStatisticsReset(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

 PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 0);
 PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT1, 1);
}
