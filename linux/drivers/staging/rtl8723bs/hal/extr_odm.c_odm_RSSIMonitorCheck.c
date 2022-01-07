
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SupportAbility; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_BB_RSSI_MONITOR ;
 int odm_RSSIMonitorCheckCE (TYPE_1__*) ;

void odm_RSSIMonitorCheck(PDM_ODM_T pDM_Odm)
{
 if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
  return;

 odm_RSSIMonitorCheckCE(pDM_Odm);

}
