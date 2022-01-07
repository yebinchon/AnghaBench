
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ NHMCurTxOkcnt; scalar_t__* pNumTxBytesUnicast; scalar_t__ NHMLastTxOkcnt; int NHMCurRxOkcnt; int* pNumRxBytesUnicast; int NHMLastRxOkcnt; int NHM_cnt_0; int adaptivity_flag; int tolerance_cnt; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_COMP_DIG ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;

void odm_NHMBB(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;



 pDM_Odm->NHMCurTxOkcnt =
  *(pDM_Odm->pNumTxBytesUnicast)-pDM_Odm->NHMLastTxOkcnt;
 pDM_Odm->NHMCurRxOkcnt =
  *(pDM_Odm->pNumRxBytesUnicast)-pDM_Odm->NHMLastRxOkcnt;
 pDM_Odm->NHMLastTxOkcnt =
  *(pDM_Odm->pNumTxBytesUnicast);
 pDM_Odm->NHMLastRxOkcnt =
  *(pDM_Odm->pNumRxBytesUnicast);
 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_DIG,
  ODM_DBG_LOUD,
  (
   "NHM_cnt_0 =%d, NHMCurTxOkcnt = %llu, NHMCurRxOkcnt = %llu\n",
   pDM_Odm->NHM_cnt_0,
   pDM_Odm->NHMCurTxOkcnt,
   pDM_Odm->NHMCurRxOkcnt
  )
 );


 if ((pDM_Odm->NHMCurTxOkcnt) + 1 > (u64)(pDM_Odm->NHMCurRxOkcnt<<2) + 1) {
  if (pDM_Odm->NHM_cnt_0 >= 190 || pDM_Odm->adaptivity_flag == 1) {


   pDM_Odm->adaptivity_flag = 1;
   pDM_Odm->tolerance_cnt = 0;
  } else {
   if (pDM_Odm->tolerance_cnt < 3)
    pDM_Odm->tolerance_cnt = pDM_Odm->tolerance_cnt + 1;
   else
    pDM_Odm->tolerance_cnt = 4;

   if (pDM_Odm->tolerance_cnt > 3) {

    pDM_Odm->adaptivity_flag = 0;
   }
  }
 } else {
  if (pDM_Odm->adaptivity_flag == 1 && pDM_Odm->NHM_cnt_0 <= 200) {

   pDM_Odm->tolerance_cnt = 0;
  } else {
   if (pDM_Odm->tolerance_cnt < 3)
    pDM_Odm->tolerance_cnt = pDM_Odm->tolerance_cnt + 1;
   else
    pDM_Odm->tolerance_cnt = 4;

   if (pDM_Odm->tolerance_cnt > 3) {

    pDM_Odm->adaptivity_flag = 0;
   }
  }
 }

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("adaptivity_flag = %d\n ", pDM_Odm->adaptivity_flag));
}
