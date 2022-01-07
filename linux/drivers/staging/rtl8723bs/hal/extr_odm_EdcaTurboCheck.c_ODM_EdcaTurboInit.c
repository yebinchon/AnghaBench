
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bIsAnyNonBEPkts; } ;
struct adapter {TYPE_2__ recvpriv; } ;
struct TYPE_5__ {int bCurrentTurboEDCA; int bIsCurRDLState; } ;
struct TYPE_7__ {struct adapter* Adapter; TYPE_1__ DM_EDCA_Table; } ;
typedef TYPE_3__* PDM_ODM_T ;


 int ODM_COMP_EDCA_TURBO ;
 int ODM_DBG_LOUD ;
 int ODM_EDCA_BE_PARAM ;
 int ODM_EDCA_BK_PARAM ;
 int ODM_EDCA_VI_PARAM ;
 int ODM_EDCA_VO_PARAM ;
 int ODM_RT_TRACE (TYPE_3__*,int ,int ,char*) ;
 int rtw_read32 (struct adapter*,int ) ;

void ODM_EdcaTurboInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 struct adapter *Adapter = pDM_Odm->Adapter;

 pDM_Odm->DM_EDCA_Table.bCurrentTurboEDCA = 0;
 pDM_Odm->DM_EDCA_Table.bIsCurRDLState = 0;
 Adapter->recvpriv.bIsAnyNonBEPkts = 0;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
       ("Original VO PARAM: 0x%x\n",
        rtw_read32(pDM_Odm->Adapter, ODM_EDCA_VO_PARAM)));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
       ("Original VI PARAM: 0x%x\n",
        rtw_read32(pDM_Odm->Adapter, ODM_EDCA_VI_PARAM)));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
       ("Original BE PARAM: 0x%x\n",
        rtw_read32(pDM_Odm->Adapter, ODM_EDCA_BE_PARAM)));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
       ("Original BK PARAM: 0x%x\n",
        rtw_read32(pDM_Odm->Adapter, ODM_EDCA_BK_PARAM)));
}
