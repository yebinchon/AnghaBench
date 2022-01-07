
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int RSSI_B; int RSSI_A; int RxRate; int RSSI_Min; int bLinked; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_COMP_COMMON ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;

void odm_BasicDbgMessage(PDM_ODM_T pDM_Odm)
{
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_BasicDbgMsg ==>\n"));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("bLinked = %d, RSSI_Min = %d,\n",
  pDM_Odm->bLinked, pDM_Odm->RSSI_Min));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("RxRate = 0x%x, RSSI_A = %d, RSSI_B = %d\n",
  pDM_Odm->RxRate, pDM_Odm->RSSI_A, pDM_Odm->RSSI_B));
}
