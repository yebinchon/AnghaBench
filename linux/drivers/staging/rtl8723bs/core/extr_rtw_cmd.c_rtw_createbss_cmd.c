
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wlan_bssid_ex {int Length; } ;
struct TYPE_4__ {scalar_t__ SsidLength; int Ssid; } ;
struct mlme_priv {TYPE_2__ assoc_ssid; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; scalar_t__ rspsz; int * rsp; int cmdcode; int list; } ;
struct TYPE_3__ {struct wlan_bssid_ex dev_network; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;


 int INIT_LIST_HEAD (int *) ;
 int RT_TRACE (int ,int ,char*) ;
 int _CreateBss_CMD_ ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_rtl871x_cmd_c_ ;
 int get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 struct cmd_obj* rtw_zmalloc (int) ;

u8 rtw_createbss_cmd(struct adapter *padapter)
{
 struct cmd_obj *pcmd;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_bssid_ex *pdev_network = &padapter->registrypriv.dev_network;
 u8 res = _SUCCESS;

 if (pmlmepriv->assoc_ssid.SsidLength == 0) {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
 } else {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
 }

 pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 if (pcmd == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 INIT_LIST_HEAD(&pcmd->list);
 pcmd->cmdcode = _CreateBss_CMD_;
 pcmd->parmbuf = (unsigned char *)pdev_network;
 pcmd->cmdsz = get_wlan_bssid_ex_sz((struct wlan_bssid_ex *)pdev_network);
 pcmd->rsp = ((void*)0);
 pcmd->rspsz = 0;

 pdev_network->Length = pcmd->cmdsz;

 res = rtw_enqueue_cmd(pcmdpriv, pcmd);

exit:
 return res;
}
