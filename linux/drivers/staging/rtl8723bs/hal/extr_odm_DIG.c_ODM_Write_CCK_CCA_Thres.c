
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef TYPE_1__* pDIG_T ;
struct TYPE_4__ {scalar_t__ CurCCK_CCAThres; scalar_t__ PreCCK_CCAThres; } ;
struct TYPE_5__ {int Adapter; TYPE_1__ DM_DigTable; } ;
typedef TYPE_2__* PDM_ODM_T ;


 int CCK_CCA ;
 int ODM_REG (int ,TYPE_2__*) ;
 int rtw_write8 (int ,int ,scalar_t__) ;

void ODM_Write_CCK_CCA_Thres(void *pDM_VOID, u8 CurCCK_CCAThres)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;


 if (pDM_DigTable->CurCCK_CCAThres != CurCCK_CCAThres)
  rtw_write8(pDM_Odm->Adapter, ODM_REG(CCK_CCA, pDM_Odm), CurCCK_CCAThres);

 pDM_DigTable->PreCCK_CCAThres = pDM_DigTable->CurCCK_CCAThres;
 pDM_DigTable->CurCCK_CCAThres = CurCCK_CCAThres;
}
