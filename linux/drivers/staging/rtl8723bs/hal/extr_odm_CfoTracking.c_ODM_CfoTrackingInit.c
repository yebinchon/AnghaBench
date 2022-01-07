
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bAdjust; int DefXCap; int bATCStatus; int CrystalCap; } ;
struct TYPE_6__ {TYPE_2__ DM_CfoTrack; } ;
typedef TYPE_1__* PDM_ODM_T ;
typedef TYPE_2__* PCFO_TRACKING ;


 int ODM_COMP_CFO_TRACKING ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int odm_GetATCStatus (TYPE_1__*) ;
 int odm_GetDefaultCrytaltalCap (TYPE_1__*) ;

void ODM_CfoTrackingInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;

 pCfoTrack->DefXCap =
  pCfoTrack->CrystalCap = odm_GetDefaultCrytaltalCap(pDM_Odm);
 pCfoTrack->bATCStatus = odm_GetATCStatus(pDM_Odm);
 pCfoTrack->bAdjust = 1;
 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_CFO_TRACKING,
  ODM_DBG_LOUD,
  ("ODM_CfoTracking_init() =========>\n")
 );
 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_CFO_TRACKING,
  ODM_DBG_LOUD,
  (
   "ODM_CfoTracking_init(): bATCStatus = %d, CrystalCap = 0x%x\n",
   pCfoTrack->bATCStatus,
   pCfoTrack->DefXCap
  )
 );
}
