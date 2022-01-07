
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct wilc_vif {int connecting; scalar_t__ iftype; struct wilc* wilc; } ;
struct TYPE_2__ {int local_random; int recv_random; int is_wilc_ie; } ;
struct wilc_priv {struct net_device* dev; int associated_bss; TYPE_1__ p2p; struct host_if_drv* hif_drv; } ;
struct wilc_conn_info {scalar_t__ status; int resp_ies_len; int resp_ies; int req_ies_len; int req_ies; int bssid; } ;
struct wilc {void* sta_ch; } ;
struct net_device {int dummy; } ;
struct host_if_drv {scalar_t__ ifc_up; struct wilc_conn_info conn_info; } ;
typedef enum conn_event { ____Placeholder_conn_event } conn_event ;


 int CONN_DISCONN_EVENT_CONN_RESP ;
 int CONN_DISCONN_EVENT_DISCONN_NOTIF ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ WILC_CLIENT_MODE ;
 void* WILC_INVALID_CHANNEL ;
 scalar_t__ WILC_MAC_STATUS_DISCONNECTED ;
 int WILC_STATION_MODE ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 scalar_t__ WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int cfg80211_connect_result (struct net_device*,int ,int ,int ,int ,int ,scalar_t__,int ) ;
 int cfg80211_disconnected (struct net_device*,scalar_t__,int *,int ,int,int ) ;
 int eth_zero_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_wlan_set_bssid (struct net_device*,int *,int ) ;

__attribute__((used)) static void cfg_connect_result(enum conn_event conn_disconn_evt, u8 mac_status,
          void *priv_data)
{
 struct wilc_priv *priv = priv_data;
 struct net_device *dev = priv->dev;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wl = vif->wilc;
 struct host_if_drv *wfi_drv = priv->hif_drv;
 struct wilc_conn_info *conn_info = &wfi_drv->conn_info;

 vif->connecting = 0;

 if (conn_disconn_evt == CONN_DISCONN_EVENT_CONN_RESP) {
  u16 connect_status = conn_info->status;

  if (mac_status == WILC_MAC_STATUS_DISCONNECTED &&
      connect_status == WLAN_STATUS_SUCCESS) {
   connect_status = WLAN_STATUS_UNSPECIFIED_FAILURE;
   wilc_wlan_set_bssid(priv->dev, ((void*)0), WILC_STATION_MODE);

   if (vif->iftype != WILC_CLIENT_MODE)
    wl->sta_ch = WILC_INVALID_CHANNEL;

   netdev_err(dev, "Unspecified failure\n");
  }

  if (connect_status == WLAN_STATUS_SUCCESS)
   memcpy(priv->associated_bss, conn_info->bssid,
          ETH_ALEN);

  cfg80211_connect_result(dev, conn_info->bssid,
     conn_info->req_ies,
     conn_info->req_ies_len,
     conn_info->resp_ies,
     conn_info->resp_ies_len, connect_status,
     GFP_KERNEL);
 } else if (conn_disconn_evt == CONN_DISCONN_EVENT_DISCONN_NOTIF) {
  u16 reason = 0;

  priv->p2p.local_random = 0x01;
  priv->p2p.recv_random = 0x00;
  priv->p2p.is_wilc_ie = 0;
  eth_zero_addr(priv->associated_bss);
  wilc_wlan_set_bssid(priv->dev, ((void*)0), WILC_STATION_MODE);

  if (vif->iftype != WILC_CLIENT_MODE) {
   wl->sta_ch = WILC_INVALID_CHANNEL;
  } else {
   if (wfi_drv->ifc_up)
    reason = 3;
   else
    reason = 1;
  }

  cfg80211_disconnected(dev, reason, ((void*)0), 0, 0, GFP_KERNEL);
 }
}
