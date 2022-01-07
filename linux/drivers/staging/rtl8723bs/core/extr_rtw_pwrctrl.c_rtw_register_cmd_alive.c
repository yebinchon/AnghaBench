
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pwrctrl_priv {scalar_t__ cpwm; scalar_t__ rpwm; int lock; int alives; scalar_t__ bFwCurrentInPSMode; } ;
struct adapter {int dummy; } ;
typedef scalar_t__ s32 ;


 int CMD_ALIVE ;
 scalar_t__ PS_STATE_S2 ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _drv_info_ ;
 int _module_rtl871x_pwrctrl_c_ ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_task_alive (struct pwrctrl_priv*,int ) ;
 int rtw_set_rpwm (struct adapter*,scalar_t__) ;

s32 rtw_register_cmd_alive(struct adapter *padapter)
{
 s32 res;
 struct pwrctrl_priv *pwrctrl;
 u8 pslv;

 res = _SUCCESS;
 pwrctrl = adapter_to_pwrctl(padapter);
 pslv = PS_STATE_S2;

 mutex_lock(&pwrctrl->lock);

 register_task_alive(pwrctrl, CMD_ALIVE);

 if (pwrctrl->bFwCurrentInPSMode) {
  RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_info_,
     ("rtw_register_cmd_alive: cpwm = 0x%02x alives = 0x%08x\n",
      pwrctrl->cpwm, pwrctrl->alives));

  if (pwrctrl->cpwm < pslv) {
   if (pwrctrl->cpwm < PS_STATE_S2)
    res = _FAIL;
   if (pwrctrl->rpwm < pslv)
    rtw_set_rpwm(padapter, pslv);
  }
 }

 mutex_unlock(&pwrctrl->lock);

 if (_FAIL == res)
  if (pwrctrl->cpwm >= PS_STATE_S2)
   res = _SUCCESS;

 return res;
}
