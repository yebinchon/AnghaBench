
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwrctrl_priv {int rpwm; scalar_t__ rpwm_retry; int tog; int cpwm; } ;
struct _adapter {scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct pwrctrl_priv pwrctrlpriv; } ;






 int r8712_write8 (struct _adapter*,int,int) ;

void r8712_set_rpwm(struct _adapter *padapter, u8 val8)
{
 u8 rpwm;
 struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;

 if (pwrpriv->rpwm == val8) {
  if (pwrpriv->rpwm_retry == 0)
   return;
 }
 if (padapter->driver_stopped || padapter->surprise_removed)
  return;
 rpwm = val8 | pwrpriv->tog;
 switch (val8) {
 case 131:
  pwrpriv->cpwm = val8;
  break;
 case 130:


 case 129:
 case 128:
  pwrpriv->cpwm = val8;
  break;
 default:
  break;
 }
 pwrpriv->rpwm_retry = 0;
 pwrpriv->rpwm = val8;
 r8712_write8(padapter, 0x1025FE58, rpwm);
 pwrpriv->tog += 0x80;
}
