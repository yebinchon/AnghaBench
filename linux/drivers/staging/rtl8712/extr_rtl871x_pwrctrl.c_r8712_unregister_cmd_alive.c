
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ cpwm; scalar_t__ pwr_mode; scalar_t__ alives; int mutex_lock; } ;
struct _adapter {int mlmepriv; struct pwrctrl_priv pwrctrlpriv; } ;


 int CMD_ALIVE ;
 scalar_t__ PS_MODE_ACTIVE ;
 int PS_STATE_S0 ;
 scalar_t__ PS_STATE_S2 ;
 int _FW_UNDER_LINKING ;
 int check_fwstate (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r8712_set_rpwm (struct _adapter*,int ) ;
 int unregister_task_alive (struct pwrctrl_priv*,int ) ;

void r8712_unregister_cmd_alive(struct _adapter *padapter)
{
 struct pwrctrl_priv *pwrctrl = &padapter->pwrctrlpriv;

 mutex_lock(&pwrctrl->mutex_lock);
 unregister_task_alive(pwrctrl, CMD_ALIVE);
 if ((pwrctrl->cpwm > PS_STATE_S2) &&
    (pwrctrl->pwr_mode > PS_MODE_ACTIVE)) {
  if ((pwrctrl->alives == 0) &&
      (check_fwstate(&padapter->mlmepriv,
       _FW_UNDER_LINKING) != 1)) {
   r8712_set_rpwm(padapter, PS_STATE_S0);
  }
 }
 mutex_unlock(&pwrctrl->mutex_lock);
}
