
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bAdjust; int DefXCap; } ;
struct TYPE_6__ {TYPE_2__ DM_CfoTrack; } ;
typedef TYPE_1__* PDM_ODM_T ;
typedef TYPE_2__* PCFO_TRACKING ;


 int odm_GetDefaultCrytaltalCap (TYPE_1__*) ;
 int odm_SetATCStatus (TYPE_1__*,int) ;
 int odm_SetCrystalCap (TYPE_1__*,int ) ;

void ODM_CfoTrackingReset(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;

 pCfoTrack->DefXCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
 pCfoTrack->bAdjust = 1;

 odm_SetCrystalCap(pDM_Odm, pCfoTrack->DefXCap);
 odm_SetATCStatus(pDM_Odm, 1);
}
