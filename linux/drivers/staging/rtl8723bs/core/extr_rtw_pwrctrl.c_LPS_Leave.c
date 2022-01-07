
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ pwr_mode; int bpower_saving; scalar_t__ bLeisurePs; } ;
struct dvobj_priv {int dummy; } ;
struct adapter {int dummy; } ;


 int LPS_LEAVE_TIMEOUT_MS ;
 int LPS_RF_ON_check (struct adapter*,int ) ;
 scalar_t__ PS_MODE_ACTIVE ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 struct pwrctrl_priv* dvobj_to_pwrctl (struct dvobj_priv*) ;
 scalar_t__ hal_btcoex_IsBtControlLps (struct adapter*) ;
 int rtw_set_ps_mode (struct adapter*,scalar_t__,int ,int ,char*) ;
 int sprintf (char*,char*,char const*) ;

void LPS_Leave(struct adapter *padapter, const char *msg)
{


 struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);
 struct pwrctrl_priv *pwrpriv = dvobj_to_pwrctl(dvobj);
 char buf[32] = {0};



 if (hal_btcoex_IsBtControlLps(padapter))
  return;

 if (pwrpriv->bLeisurePs) {
  if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
   sprintf(buf, "WIFI-%s", msg);
   rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0, buf);

   if (pwrpriv->pwr_mode == PS_MODE_ACTIVE)
    LPS_RF_ON_check(padapter, 100);
  }
 }

 pwrpriv->bpower_saving = 0;


}
