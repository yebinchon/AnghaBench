
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pwrctrl_priv {unsigned long DelayLPSLastTimeStamp; scalar_t__ bInSuspend; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ dot11AuthAlgrthm; int binstallGrpkey; } ;
struct adapter {TYPE_1__ securitypriv; struct mlme_priv mlmepriv; struct pwrctrl_priv pwrctrlpriv; } ;


 int DBG_88E (char*) ;
 unsigned long LPS_DELAY_TIME ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_SURVEY ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ dot11AuthAlgrthm_8021X ;
 unsigned long jiffies ;

__attribute__((used)) static u8 PS_RDY_CHECK(struct adapter *padapter)
{
 unsigned long curr_time, delta_time;
 struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);

 curr_time = jiffies;
 delta_time = curr_time - pwrpriv->DelayLPSLastTimeStamp;

 if (delta_time < LPS_DELAY_TIME)
  return 0;

 if ((!check_fwstate(pmlmepriv, _FW_LINKED)) ||
     (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY)) ||
     (check_fwstate(pmlmepriv, WIFI_AP_STATE)) ||
     (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) ||
     (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)))
  return 0;
 if (pwrpriv->bInSuspend)
  return 0;
 if (padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X &&
     !padapter->securitypriv.binstallGrpkey) {
  DBG_88E("Group handshake still in progress !!!\n");
  return 0;
 }
 return 1;
}
