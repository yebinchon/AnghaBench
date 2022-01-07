
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bATCStatus; } ;
struct TYPE_5__ {int Adapter; TYPE_2__ DM_CfoTrack; } ;
typedef TYPE_1__* PDM_ODM_T ;
typedef TYPE_2__* PCFO_TRACKING ;


 int BB_ATC ;
 int ODM_BIT (int ,TYPE_1__*) ;
 int ODM_REG (int ,TYPE_1__*) ;
 int PHY_SetBBReg (int ,int ,int ,int) ;

__attribute__((used)) static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;

 if (pCfoTrack->bATCStatus == ATCStatus)
  return;

 PHY_SetBBReg(
  pDM_Odm->Adapter,
  ODM_REG(BB_ATC, pDM_Odm),
  ODM_BIT(BB_ATC, pDM_Odm),
  ATCStatus
 );
 pCfoTrack->bATCStatus = ATCStatus;
}
