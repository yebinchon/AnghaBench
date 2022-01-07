
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int SsidLength; } ;
struct wlan_bssid_ex {TYPE_3__ Ssid; int IELength; int Length; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; scalar_t__ rspsz; int * rsp; int cmdcode; int list; } ;
struct TYPE_5__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct TYPE_4__ {struct wlan_bssid_ex dev_network; } ;
struct _adapter {TYPE_2__ ledpriv; TYPE_1__ registrypriv; struct cmd_priv cmdpriv; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int LED_CTL_START_TO_LINK ;
 int _CreateBss_CMD_ ;
 struct cmd_obj* kmalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 int r8712_get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;
 int stub1 (struct _adapter*,int ) ;

int r8712_createbss_cmd(struct _adapter *padapter)
{
 struct cmd_obj *pcmd;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct wlan_bssid_ex *pdev_network =
     &padapter->registrypriv.dev_network;

 padapter->ledpriv.LedControlHandler(padapter, LED_CTL_START_TO_LINK);
 pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 if (!pcmd)
  return -ENOMEM;
 INIT_LIST_HEAD(&pcmd->list);
 pcmd->cmdcode = _CreateBss_CMD_;
 pcmd->parmbuf = (unsigned char *)pdev_network;
 pcmd->cmdsz = r8712_get_wlan_bssid_ex_sz(pdev_network);
 pcmd->rsp = ((void*)0);
 pcmd->rspsz = 0;

 pdev_network->Length = pcmd->cmdsz;
 pdev_network->IELength = pdev_network->IELength;
 pdev_network->Ssid.SsidLength = pdev_network->Ssid.SsidLength;
 r8712_enqueue_cmd(pcmdpriv, pcmd);
 return 0;
}
