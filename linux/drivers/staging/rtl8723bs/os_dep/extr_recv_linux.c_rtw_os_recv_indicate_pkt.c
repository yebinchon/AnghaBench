
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct rx_pkt_attrib {int tcpchk_valid; int tcp_chkrpt; int dst; } ;
struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_11__ {int os_netif_err; int os_netif_ok; int os_indicate_ap_self; int os_indicate_ap_forward; int os_indicate_ap_mcast; } ;
struct adapter {TYPE_1__ rx_logs; struct net_device* pnetdev; int eeprompriv; struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;
struct TYPE_12__ {void* ip_summed; struct net_device* dev; int protocol; } ;
typedef TYPE_2__ _pkt ;


 void* CHECKSUM_NONE ;
 void* CHECKSUM_UNNECESSARY ;
 int DBG_COUNTER (int ) ;
 int ETH_ALEN ;
 int IS_MCAST (int ) ;
 int NET_RX_SUCCESS ;
 int WIFI_AP_STATE ;
 int _rtw_xmit_entry (TYPE_2__*,struct net_device*) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int eth_type_trans (TYPE_2__*,struct net_device*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int myid (int *) ;
 struct sta_info* rtw_get_bcmc_stainfo (struct adapter*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 int rtw_netif_rx (struct net_device*,TYPE_2__*) ;
 int rtw_recv_select_queue (TYPE_2__*) ;
 TYPE_2__* rtw_skb_clone (TYPE_2__*) ;
 int skb_set_queue_mapping (TYPE_2__*,int ) ;

void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib)
{
 struct mlme_priv*pmlmepriv = &padapter->mlmepriv;
 int ret;


 if (pkt) {
  if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1) {
   _pkt *pskb2 = ((void*)0);
   struct sta_info *psta = ((void*)0);
   struct sta_priv *pstapriv = &padapter->stapriv;
   int bmcast = IS_MCAST(pattrib->dst);



   if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {


    if (bmcast) {
     psta = rtw_get_bcmc_stainfo(padapter);
     pskb2 = rtw_skb_clone(pkt);
    } else {
     psta = rtw_get_stainfo(pstapriv, pattrib->dst);
    }

    if (psta) {
     struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;




     pkt->dev = pnetdev;
     skb_set_queue_mapping(pkt, rtw_recv_select_queue(pkt));

     _rtw_xmit_entry(pkt, pnetdev);

     if (bmcast && (pskb2 != ((void*)0))) {
      pkt = pskb2;
      DBG_COUNTER(padapter->rx_logs.os_indicate_ap_mcast);
     } else {
      DBG_COUNTER(padapter->rx_logs.os_indicate_ap_forward);
      return;
     }
    }
   } else {


    DBG_COUNTER(padapter->rx_logs.os_indicate_ap_self);
   }
  }

  pkt->protocol = eth_type_trans(pkt, padapter->pnetdev);
  pkt->dev = padapter->pnetdev;
  pkt->ip_summed = CHECKSUM_NONE;


  ret = rtw_netif_rx(padapter->pnetdev, pkt);
  if (ret == NET_RX_SUCCESS)
   DBG_COUNTER(padapter->rx_logs.os_netif_ok);
  else
   DBG_COUNTER(padapter->rx_logs.os_netif_err);
 }
}
