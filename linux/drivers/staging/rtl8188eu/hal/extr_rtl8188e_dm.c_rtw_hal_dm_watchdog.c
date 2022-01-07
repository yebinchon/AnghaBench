
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlme_priv {int dummy; } ;
struct TYPE_4__ {int asoc_sta_count; } ;
struct adapter {int hw_init_completed; TYPE_2__* HalData; TYPE_1__ stapriv; struct mlme_priv mlmepriv; } ;
struct TYPE_6__ {int bLinked; } ;
struct TYPE_5__ {TYPE_3__ odmpriv; } ;


 int ODM_DMWatchdog (TYPE_3__*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;

void rtw_hal_dm_watchdog(struct adapter *Adapter)
{
 u8 hw_init_completed = 0;
 struct mlme_priv *pmlmepriv = ((void*)0);
 u8 bLinked = 0;

 hw_init_completed = Adapter->hw_init_completed;

 if (!hw_init_completed)
  goto skip_dm;


 pmlmepriv = &Adapter->mlmepriv;

 if ((check_fwstate(pmlmepriv, WIFI_AP_STATE)) ||
     (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE |
      WIFI_ADHOC_MASTER_STATE))) {
  if (Adapter->stapriv.asoc_sta_count > 2)
   bLinked = 1;
 } else {
  if (check_fwstate(pmlmepriv, _FW_LINKED))
   bLinked = 1;
 }

 Adapter->HalData->odmpriv.bLinked = bLinked;
 ODM_DMWatchdog(&Adapter->HalData->odmpriv);
skip_dm:


 return;
}
