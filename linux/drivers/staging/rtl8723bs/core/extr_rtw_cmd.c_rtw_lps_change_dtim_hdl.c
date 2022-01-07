
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwrctrl_priv {int dtim; int bFwCurrentInPSMode; scalar_t__ pwr_mode; int lock; } ;
struct adapter {int dummy; } ;


 int DBG_871X (char*,int,int,int,scalar_t__) ;
 int HW_VAR_H2C_FW_PWRMODE ;
 scalar_t__ PS_MODE_ACTIVE ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int hal_btcoex_IsBtControlLps (struct adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

__attribute__((used)) static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
{
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);

 if (dtim <= 0 || dtim > 16)
  return;

 if (hal_btcoex_IsBtControlLps(padapter) == 1)
  return;

 mutex_lock(&pwrpriv->lock);

 if (pwrpriv->dtim != dtim) {
  DBG_871X("change DTIM from %d to %d, bFwCurrentInPSMode =%d, ps_mode =%d\n", pwrpriv->dtim, dtim,
   pwrpriv->bFwCurrentInPSMode, pwrpriv->pwr_mode);

  pwrpriv->dtim = dtim;
 }

 if ((pwrpriv->bFwCurrentInPSMode == 1) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
  u8 ps_mode = pwrpriv->pwr_mode;



  rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
 }

 mutex_unlock(&pwrpriv->lock);
}
