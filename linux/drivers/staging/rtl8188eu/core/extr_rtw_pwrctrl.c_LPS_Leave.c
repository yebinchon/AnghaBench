
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrctrl_priv {scalar_t__ pwr_mode; int bpower_saving; scalar_t__ bLeisurePs; } ;
struct adapter {struct pwrctrl_priv pwrctrlpriv; } ;


 int LPS_LEAVE_TIMEOUT_MS ;
 int LPS_RF_ON_check (struct adapter*,int ) ;
 scalar_t__ PS_MODE_ACTIVE ;
 int rtw_set_ps_mode (struct adapter*,scalar_t__,int ,int ) ;

void LPS_Leave(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;

 if (pwrpriv->bLeisurePs) {
  if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
   rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0);

   if (pwrpriv->pwr_mode == PS_MODE_ACTIVE)
    LPS_RF_ON_check(padapter, LPS_LEAVE_TIMEOUT_MS);
  }
 }

 pwrpriv->bpower_saving = 0;
}
