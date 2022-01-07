
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlan_bssid_ex {scalar_t__ ie_length; scalar_t__ ies; } ;
struct mlme_ext_info {int hidden_ssid_mode; int network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct cmd_priv cmdpriv; } ;


 int GFP_ATOMIC ;
 scalar_t__ _BEACON_IE_OFFSET_ ;
 int _FAIL ;
 int _TX_Beacon_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct wlan_bssid_ex*,int ) ;
 int kfree (struct cmd_obj*) ;
 struct wlan_bssid_ex* kmemdup (int *,int,int ) ;
 struct cmd_obj* kzalloc (int,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 int update_hidden_ssid (scalar_t__,scalar_t__,int ) ;

u8 set_tx_beacon_cmd(struct adapter *padapter)
{
 struct cmd_obj *ph2c;
 struct wlan_bssid_ex *ptxBeacon_parm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 u8 res;
 int len_diff = 0;

 ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
 if (!ph2c) {
  res = _FAIL;
  goto exit;
 }

 ptxBeacon_parm = kmemdup(&pmlmeinfo->network,
    sizeof(struct wlan_bssid_ex), GFP_ATOMIC);
 if (ptxBeacon_parm == ((void*)0)) {
  kfree(ph2c);
  res = _FAIL;
  goto exit;
 }

 len_diff = update_hidden_ssid(ptxBeacon_parm->ies+_BEACON_IE_OFFSET_,
          ptxBeacon_parm->ie_length-_BEACON_IE_OFFSET_,
          pmlmeinfo->hidden_ssid_mode);
 ptxBeacon_parm->ie_length += len_diff;

 init_h2fwcmd_w_parm_no_rsp(ph2c, ptxBeacon_parm, _TX_Beacon_CMD_);

 res = rtw_enqueue_cmd(pcmdpriv, ph2c);

exit:
 return res;
}
