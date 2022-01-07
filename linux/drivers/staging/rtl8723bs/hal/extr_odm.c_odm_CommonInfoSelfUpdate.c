
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {scalar_t__* pBandWidth; int* pSecChOffset; int bOneEntryOnly; int * pODM_StaInfo; scalar_t__* pChannel; scalar_t__ ControlChannel; } ;
typedef int PSTA_INFO_T ;
typedef TYPE_1__* PDM_ODM_T ;


 scalar_t__ IS_STA_VALID (int ) ;
 size_t ODM_ASSOCIATE_ENTRY_NUM ;
 scalar_t__ ODM_BW40M ;

void odm_CommonInfoSelfUpdate(PDM_ODM_T pDM_Odm)
{
 u8 EntryCnt = 0;
 u8 i;
 PSTA_INFO_T pEntry;

 if (*(pDM_Odm->pBandWidth) == ODM_BW40M) {
  if (*(pDM_Odm->pSecChOffset) == 1)
   pDM_Odm->ControlChannel = *(pDM_Odm->pChannel)-2;
  else if (*(pDM_Odm->pSecChOffset) == 2)
   pDM_Odm->ControlChannel = *(pDM_Odm->pChannel)+2;
 } else
  pDM_Odm->ControlChannel = *(pDM_Odm->pChannel);

 for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
  pEntry = pDM_Odm->pODM_StaInfo[i];
  if (IS_STA_VALID(pEntry))
   EntryCnt++;
 }

 if (EntryCnt == 1)
  pDM_Odm->bOneEntryOnly = 1;
 else
  pDM_Odm->bOneEntryOnly = 0;
}
