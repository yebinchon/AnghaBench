
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ cpwm; scalar_t__ rpwm; int rpwm_workitem; } ;
struct _adapter {scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct pwrctrl_priv pwrctrlpriv; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void _rpwm_check_handler (struct _adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;

 if (padapter->driver_stopped || padapter->surprise_removed)
  return;
 if (pwrpriv->cpwm != pwrpriv->rpwm)
  schedule_work(&pwrpriv->rpwm_workitem);
}
