
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct pwrctrl_priv {scalar_t__ pwr_mode; scalar_t__ smart_ps; int bSleep; int SetPSModeWorkItem; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; } ;


 scalar_t__ PM_Card_Disable ;
 scalar_t__ PS_MODE_ACTIVE ;
 int schedule_work (int *) ;

void r8712_set_ps_mode(struct _adapter *padapter, uint ps_mode, uint smart_ps)
{
 struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;

 if (ps_mode > PM_Card_Disable)
  return;

 if (ps_mode == PS_MODE_ACTIVE)
  smart_ps = 0;
 if ((pwrpriv->pwr_mode != ps_mode) || (pwrpriv->smart_ps != smart_ps)) {
  if (pwrpriv->pwr_mode == PS_MODE_ACTIVE)
   pwrpriv->bSleep = 1;
  else
   pwrpriv->bSleep = 0;
  pwrpriv->pwr_mode = ps_mode;
  pwrpriv->smart_ps = smart_ps;
  schedule_work(&pwrpriv->SetPSModeWorkItem);
 }
}
