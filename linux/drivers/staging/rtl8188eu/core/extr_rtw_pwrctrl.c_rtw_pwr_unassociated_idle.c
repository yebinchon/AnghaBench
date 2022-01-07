
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlme_priv {int dummy; } ;
struct TYPE_2__ {int ips_deny_time; } ;
struct adapter {TYPE_1__ pwrctrlpriv; struct mlme_priv mlmepriv; } ;


 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_ASOC_STATE ;
 int WIFI_SITE_MONITOR ;
 int WIFI_UNDER_LINKING ;
 int WIFI_UNDER_WPS ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int jiffies ;
 scalar_t__ time_after_eq (int ,int ) ;

__attribute__((used)) static bool rtw_pwr_unassociated_idle(struct adapter *adapter)
{
 struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
 bool ret = 0;

 if (time_after_eq(adapter->pwrctrlpriv.ips_deny_time, jiffies))
  goto exit;

 if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE|WIFI_SITE_MONITOR) ||
     check_fwstate(pmlmepriv, WIFI_UNDER_LINKING|WIFI_UNDER_WPS) ||
     check_fwstate(pmlmepriv, WIFI_AP_STATE) ||
     check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_ADHOC_STATE))
  goto exit;

 ret = 1;

exit:
 return ret;
}
