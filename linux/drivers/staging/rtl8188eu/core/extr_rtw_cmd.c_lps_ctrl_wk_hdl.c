
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwrctrl_priv {int DelayLPSLastTimeStamp; int LpsIdleCount; } ;
struct mlme_priv {int dummy; } ;
struct adapter {struct pwrctrl_priv pwrctrlpriv; struct mlme_priv mlmepriv; } ;


 int HW_VAR_H2C_FW_JOINBSSRPT ;






 int LPS_Leave (struct adapter*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int jiffies ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

__attribute__((used)) static void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
{
 struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 u8 mstatus;

 if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
     check_fwstate(pmlmepriv, WIFI_ADHOC_STATE))
  return;

 switch (lps_ctrl_type) {
 case 129:
  if (check_fwstate(pmlmepriv, _FW_LINKED)) {

   LPS_Leave(padapter);
  }
  break;
 case 131:
  LPS_Leave(padapter);
  break;
 case 133:
  mstatus = 1;

  padapter->pwrctrlpriv.LpsIdleCount = 0;
  rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
  break;
 case 132:
  mstatus = 0;
  LPS_Leave(padapter);
  rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
  break;
 case 128:
  pwrpriv->DelayLPSLastTimeStamp = jiffies;
  LPS_Leave(padapter);
  break;
 case 130:
  LPS_Leave(padapter);
  break;
 default:
  break;
 }
}
