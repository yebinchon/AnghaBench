
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bCurrentTurboEDCA; int bIsCurRDLState; } ;
struct odm_dm_struct {TYPE_1__ DM_EDCA_Table; struct adapter* Adapter; } ;
struct TYPE_4__ {int bIsAnyNonBEPkts; } ;
struct adapter {TYPE_2__ recvpriv; } ;


 int ODM_COMP_EDCA_TURBO ;
 int ODM_DBG_LOUD ;
 int ODM_EDCA_BE_PARAM ;
 int ODM_EDCA_BK_PARAM ;
 int ODM_EDCA_VI_PARAM ;
 int ODM_EDCA_VO_PARAM ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int usb_read32 (struct adapter*,int ) ;

void ODM_EdcaTurboInit(struct odm_dm_struct *pDM_Odm)
{
 struct adapter *Adapter = pDM_Odm->Adapter;

 pDM_Odm->DM_EDCA_Table.bCurrentTurboEDCA = 0;
 pDM_Odm->DM_EDCA_Table.bIsCurRDLState = 0;
 Adapter->recvpriv.bIsAnyNonBEPkts = 0;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("Original VO PARAM: 0x%x\n", usb_read32(Adapter, ODM_EDCA_VO_PARAM)));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("Original VI PARAM: 0x%x\n", usb_read32(Adapter, ODM_EDCA_VI_PARAM)));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("Original BE PARAM: 0x%x\n", usb_read32(Adapter, ODM_EDCA_BE_PARAM)));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("Original BK PARAM: 0x%x\n", usb_read32(Adapter, ODM_EDCA_BK_PARAM)));
}
