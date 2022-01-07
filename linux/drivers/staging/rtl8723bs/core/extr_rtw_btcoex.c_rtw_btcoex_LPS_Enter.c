
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwrctrl_priv {int bpower_saving; } ;
struct adapter {int dummy; } ;


 int PS_MODE_MIN ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int hal_btcoex_LpsVal (struct adapter*) ;
 int rtw_set_ps_mode (struct adapter*,int ,int ,int ,char*) ;

void rtw_btcoex_LPS_Enter(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv;
 u8 lpsVal;


 pwrpriv = adapter_to_pwrctl(padapter);

 pwrpriv->bpower_saving = 1;
 lpsVal = hal_btcoex_LpsVal(padapter);
 rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, lpsVal, "BTCOEX");
}
