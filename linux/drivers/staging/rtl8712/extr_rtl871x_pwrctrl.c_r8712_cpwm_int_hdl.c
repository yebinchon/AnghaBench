
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reportpwrstate_parm {int state; } ;
struct pwrctrl_priv {int cpwm_tog; int cpwm; int alives; int mutex_lock; int rpwm_check_timer; } ;
struct cmd_priv {int cmd_queue_comp; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; struct cmd_priv cmdpriv; } ;


 int CMD_ALIVE ;
 int PS_STATE_S2 ;
 int complete (int *) ;
 int del_timer (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void r8712_cpwm_int_hdl(struct _adapter *padapter,
   struct reportpwrstate_parm *preportpwrstate)
{
 struct pwrctrl_priv *pwrpriv = &(padapter->pwrctrlpriv);
 struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);

 if (pwrpriv->cpwm_tog == ((preportpwrstate->state) & 0x80))
  return;
 del_timer(&padapter->pwrctrlpriv.rpwm_check_timer);
 mutex_lock(&pwrpriv->mutex_lock);
 pwrpriv->cpwm = (preportpwrstate->state) & 0xf;
 if (pwrpriv->cpwm >= PS_STATE_S2) {
  if (pwrpriv->alives & CMD_ALIVE)
   complete(&(pcmdpriv->cmd_queue_comp));
 }
 pwrpriv->cpwm_tog = (preportpwrstate->state) & 0x80;
 mutex_unlock(&pwrpriv->mutex_lock);
}
