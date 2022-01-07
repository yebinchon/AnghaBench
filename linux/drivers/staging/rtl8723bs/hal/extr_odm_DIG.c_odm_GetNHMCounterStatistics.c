
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ NHM_cnt_0; int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_REG_NHM_CNT_11N ;
 int PHY_QueryBBReg (int ,int ,int ) ;
 int bMaskByte0 ;
 int bMaskDWord ;

void odm_GetNHMCounterStatistics(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 u32 value32 = 0;

 value32 = PHY_QueryBBReg(pDM_Odm->Adapter, ODM_REG_NHM_CNT_11N, bMaskDWord);

 pDM_Odm->NHM_cnt_0 = (u8)(value32 & bMaskByte0);
}
