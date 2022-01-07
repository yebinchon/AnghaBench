
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ pwr_mode; int bpower_saving; } ;
struct adapter {int dummy; } ;


 int LPS_RF_ON_check (struct adapter*,int) ;
 scalar_t__ PS_MODE_ACTIVE ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int rtw_set_ps_mode (struct adapter*,scalar_t__,int ,int ,char*) ;

void rtw_btcoex_LPS_Leave(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv;


 pwrpriv = adapter_to_pwrctl(padapter);

 if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
  rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0, "BTCOEX");
  LPS_RF_ON_check(padapter, 100);
  pwrpriv->bpower_saving = 0;
 }
}
