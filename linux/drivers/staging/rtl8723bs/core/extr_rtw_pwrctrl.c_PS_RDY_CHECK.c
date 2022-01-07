
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pwrctrl_priv {unsigned long DelayLPSLastTimeStamp; scalar_t__ bInSuspend; scalar_t__ wowlan_ap_mode; scalar_t__ wowlan_mode; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ dot11AuthAlgrthm; int binstallGrpkey; } ;
struct adapter {TYPE_1__ securitypriv; struct mlme_priv mlmepriv; } ;


 int DBG_871X (char*) ;
 unsigned long LPS_DELAY_TIME ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_SITE_MONITOR ;
 int WIFI_UNDER_LINKING ;
 int WIFI_UNDER_WPS ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 scalar_t__ dot11AuthAlgrthm_8021X ;
 unsigned long jiffies ;
 int rtw_cfg80211_pwr_mgmt (struct adapter*) ;
 scalar_t__ rtw_is_scan_deny (struct adapter*) ;

__attribute__((used)) static u8 PS_RDY_CHECK(struct adapter *padapter)
{
 unsigned long curr_time, delta_time;
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 if (pwrpriv->bInSuspend)
  return 0;


 curr_time = jiffies;

 delta_time = curr_time - pwrpriv->DelayLPSLastTimeStamp;

 if (delta_time < LPS_DELAY_TIME)
  return 0;

 if (check_fwstate(pmlmepriv, WIFI_SITE_MONITOR)
  || check_fwstate(pmlmepriv, WIFI_UNDER_LINKING|WIFI_UNDER_WPS)
  || check_fwstate(pmlmepriv, WIFI_AP_STATE)
  || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_ADHOC_STATE)
  || rtw_is_scan_deny(padapter)
 )
  return 0;

 if ((padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) && !(padapter->securitypriv.binstallGrpkey)) {
  DBG_871X("Group handshake still in progress !!!\n");
  return 0;
 }

 if (!rtw_cfg80211_pwr_mgmt(padapter))
  return 0;

 return 1;
}
