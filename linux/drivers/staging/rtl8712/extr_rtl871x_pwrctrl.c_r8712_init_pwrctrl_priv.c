
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {int tog; int rpwm_check_timer; int rpwm_workitem; int SetPSModeWorkItem; scalar_t__ smart_ps; int pwr_mode; int cpwm; int mutex_lock; } ;
struct _adapter {struct pwrctrl_priv pwrctrlpriv; } ;


 int INIT_WORK (int *,int ) ;
 int PS_MODE_ACTIVE ;
 int PS_STATE_S4 ;
 int SetPSModeWorkItemCallback ;
 int memset (unsigned char*,int ,int) ;
 int mutex_init (int *) ;
 int r8712_write8 (struct _adapter*,int,int ) ;
 int rpwm_check_handler ;
 int rpwm_workitem_callback ;
 int timer_setup (int *,int ,int ) ;

void r8712_init_pwrctrl_priv(struct _adapter *padapter)
{
 struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;

 memset((unsigned char *)pwrctrlpriv, 0, sizeof(struct pwrctrl_priv));
 mutex_init(&pwrctrlpriv->mutex_lock);
 pwrctrlpriv->cpwm = PS_STATE_S4;
 pwrctrlpriv->pwr_mode = PS_MODE_ACTIVE;
 pwrctrlpriv->smart_ps = 0;
 pwrctrlpriv->tog = 0x80;

 r8712_write8(padapter, 0x1025FE58, 0);
 INIT_WORK(&pwrctrlpriv->SetPSModeWorkItem, SetPSModeWorkItemCallback);
 INIT_WORK(&pwrctrlpriv->rpwm_workitem, rpwm_workitem_callback);
 timer_setup(&pwrctrlpriv->rpwm_check_timer, rpwm_check_handler, 0);
}
