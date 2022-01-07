
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ bLinked; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int DM_DIG_FA_TH0 ;
 int DM_DIG_FA_TH1 ;
 int DM_DIG_FA_TH2 ;

void odm_FAThresholdCheck(
 void *pDM_VOID,
 bool bDFSBand,
 bool bPerformance,
 u32 RxTp,
 u32 TxTp,
 u32 *dm_FA_thres
)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

 if (pDM_Odm->bLinked && (bPerformance || bDFSBand)) {

  dm_FA_thres[0] = DM_DIG_FA_TH0;
  dm_FA_thres[1] = DM_DIG_FA_TH1;
  dm_FA_thres[2] = DM_DIG_FA_TH2;
 } else {
  dm_FA_thres[0] = 2000;
  dm_FA_thres[1] = 4000;
  dm_FA_thres[2] = 5000;
 }
 return;
}
