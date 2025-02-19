
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wlan_network {int list; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct TYPE_6__ {int queue; } ;
struct TYPE_4__ {int InfrastructureMode; } ;
struct TYPE_5__ {TYPE_1__ network; } ;
struct mlme_priv {TYPE_3__ free_bss_pool; int * free_bss_buf; int assoc_ssid; TYPE_3__ scanned_queue; int lock; int scan_mode; TYPE_2__ cur_network; scalar_t__ fw_state; int * pscanned; int * nic_hdl; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAX_BSS_CNT ;
 int Ndis802_11AutoUnknown ;
 int SCAN_ACTIVE ;
 int _FAIL ;
 int _SUCCESS ;
 int _rtw_init_queue (TYPE_3__*) ;
 int array_size (int,int) ;
 int list_add_tail (int *,int *) ;
 int memset (int *,int ,int) ;
 int rtw_clear_scan_deny (struct adapter*) ;
 int rtw_init_mlme_timer (struct adapter*) ;
 int spin_lock_init (int *) ;
 int * vzalloc (int ) ;

int rtw_init_mlme_priv(struct adapter *padapter)
{
 int i;
 u8 *pbuf;
 struct wlan_network *pnetwork;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 int res = _SUCCESS;



 pmlmepriv->nic_hdl = (u8 *)padapter;

 pmlmepriv->pscanned = ((void*)0);
 pmlmepriv->fw_state = 0;
 pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
 pmlmepriv->scan_mode = SCAN_ACTIVE;

 spin_lock_init(&pmlmepriv->lock);
 _rtw_init_queue(&pmlmepriv->free_bss_pool);
 _rtw_init_queue(&pmlmepriv->scanned_queue);

 memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));

 pbuf = vzalloc(array_size(MAX_BSS_CNT, sizeof(struct wlan_network)));

 if (!pbuf) {
  res = _FAIL;
  goto exit;
 }
 pmlmepriv->free_bss_buf = pbuf;

 pnetwork = (struct wlan_network *)pbuf;

 for (i = 0; i < MAX_BSS_CNT; i++) {
  INIT_LIST_HEAD(&pnetwork->list);

  list_add_tail(&pnetwork->list, &pmlmepriv->free_bss_pool.queue);

  pnetwork++;
 }



 rtw_clear_scan_deny(padapter);

 rtw_init_mlme_timer(padapter);

exit:
 return res;
}
