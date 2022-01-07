
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pwrctrl_priv {scalar_t__ power_mgnt; int LpsIdleCount; int bLeisurePs; } ;
struct adapter {struct pwrctrl_priv pwrctrlpriv; } ;


 int EINVAL ;
 int LeaveAllPowerSaveMode (struct adapter*) ;
 scalar_t__ PS_MODE_ACTIVE ;
 scalar_t__ PS_MODE_NUM ;

int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
{
 int ret = 0;
 struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;

 if (mode < PS_MODE_NUM) {
  if (pwrctrlpriv->power_mgnt != mode) {
   if (mode == PS_MODE_ACTIVE)
    LeaveAllPowerSaveMode(padapter);
   else
    pwrctrlpriv->LpsIdleCount = 2;
   pwrctrlpriv->power_mgnt = mode;
   pwrctrlpriv->bLeisurePs = (pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE) ? 1 : 0;
  }
 } else {
  ret = -EINVAL;
 }

 return ret;
}
