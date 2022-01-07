
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int CrystalCap; } ;
struct TYPE_4__ {int Adapter; TYPE_2__ DM_CfoTrack; } ;
typedef TYPE_1__* PDM_ODM_T ;
typedef TYPE_2__* PCFO_TRACKING ;


 int ODM_COMP_CFO_TRACKING ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int PHY_SetBBReg (int ,int ,int,int) ;
 int REG_MAC_PHY_CTRL ;

__attribute__((used)) static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;

 if (pCfoTrack->CrystalCap == CrystalCap)
  return;

 pCfoTrack->CrystalCap = CrystalCap;


 CrystalCap = CrystalCap & 0x3F;
 PHY_SetBBReg(
  pDM_Odm->Adapter,
  REG_MAC_PHY_CTRL,
  0x00FFF000,
  (CrystalCap | (CrystalCap << 6))
 );

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_CFO_TRACKING,
  ODM_DBG_LOUD,
  (
   "odm_SetCrystalCap(): CrystalCap = 0x%x\n",
   CrystalCap
  )
 );
}
