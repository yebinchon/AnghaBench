
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ rf_pwrstate; int bips_processing; int bkeepfwalive; int bpower_saving; int ips_leave_cnts; void* change_rfpwrstate; } ;
struct adapter {int dummy; } ;


 int DBG_871X (char*,...) ;
 int _SUCCESS ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 scalar_t__ rf_off ;
 void* rf_on ;
 int rtw_ips_pwr_up (struct adapter*) ;
 int rtw_read32 (struct adapter*,int) ;

int _ips_leave(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 int result = _SUCCESS;

 if ((pwrpriv->rf_pwrstate == rf_off) && (!pwrpriv->bips_processing)) {
  pwrpriv->bips_processing = 1;
  pwrpriv->change_rfpwrstate = rf_on;
  pwrpriv->ips_leave_cnts++;
  DBG_871X("==>ips_leave cnts:%d\n", pwrpriv->ips_leave_cnts);

  result = rtw_ips_pwr_up(padapter);
  if (result == _SUCCESS) {
   pwrpriv->rf_pwrstate = rf_on;
  }
  DBG_871X("nolinked power save leave\n");

  DBG_871X("==> ips_leave.....LED(0x%08x)...\n", rtw_read32(padapter, 0x4c));
  pwrpriv->bips_processing = 0;

  pwrpriv->bkeepfwalive = 0;
  pwrpriv->bpower_saving = 0;
 }

 return result;
}
