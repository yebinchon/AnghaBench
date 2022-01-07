
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwrctrl_priv {int DelayLPSLastTimeStamp; int LpsIdleCount; } ;
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int HW_VAR_H2C_FW_JOINBSSRPT ;







 int LPS_Leave (struct adapter*,char*) ;
 int PACKET_DHCP ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int _FW_LINKED ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int hal_btcoex_ScanNotify (struct adapter*,int) ;
 int hal_btcoex_SpecialPacketNotify (struct adapter*,int ) ;
 int jiffies ;
 int rtw_btcoex_MediaStatusNotify (struct adapter*,int) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
{
 struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 u8 mstatus;

 if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == 1)
  || (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1)) {
  return;
 }

 switch (lps_ctrl_type) {
 case 130:

  hal_btcoex_ScanNotify(padapter, 1);

  if (check_fwstate(pmlmepriv, _FW_LINKED) == 1) {

   LPS_Leave(padapter, "LPS_CTRL_SCAN");
  }
  break;
 case 132:

  LPS_Leave(padapter, "LPS_CTRL_JOINBSS");
  break;
 case 134:

  mstatus = 1;

  pwrpriv->LpsIdleCount = 0;
  rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
  rtw_btcoex_MediaStatusNotify(padapter, mstatus);
  break;
 case 133:

  mstatus = 0;
  rtw_btcoex_MediaStatusNotify(padapter, mstatus);
  LPS_Leave(padapter, "LPS_CTRL_DISCONNECT");
  rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
  break;
 case 129:

  pwrpriv->DelayLPSLastTimeStamp = jiffies;
  hal_btcoex_SpecialPacketNotify(padapter, PACKET_DHCP);
  LPS_Leave(padapter, "LPS_CTRL_SPECIAL_PACKET");
  break;
 case 131:

  LPS_Leave(padapter, "LPS_CTRL_LEAVE");
  break;
 case 128:
  LPS_Leave(padapter, "LPS_CTRL_TRAFFIC_BUSY");
 default:
  break;
 }
}
