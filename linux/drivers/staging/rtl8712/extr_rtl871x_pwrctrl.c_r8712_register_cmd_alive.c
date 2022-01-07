
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ cpwm; int mutex_lock; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; } ;


 int CMD_ALIVE ;
 int EINVAL ;
 scalar_t__ PS_STATE_S2 ;
 int PS_STATE_S3 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r8712_set_rpwm (struct _adapter*,int ) ;
 int register_task_alive (struct pwrctrl_priv*,int ) ;

int r8712_register_cmd_alive(struct _adapter *padapter)
{
 int res = 0;
 struct pwrctrl_priv *pwrctrl = &padapter->pwrctrlpriv;

 mutex_lock(&pwrctrl->mutex_lock);
 register_task_alive(pwrctrl, CMD_ALIVE);
 if (pwrctrl->cpwm < PS_STATE_S2) {
  r8712_set_rpwm(padapter, PS_STATE_S3);
  res = -EINVAL;
 }
 mutex_unlock(&pwrctrl->mutex_lock);
 return res;
}
