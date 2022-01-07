
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_wfi_p2p_listen_params {int listen_ch; int listen_cookie; } ;
struct wilc_priv {struct wilc_wfi_p2p_listen_params remain_on_ch_params; int p2p_listen_state; struct host_if_drv* hif_drv; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct host_if_drv {int p2p_timeout; } ;


 int GFP_KERNEL ;
 int cfg80211_remain_on_channel_expired (struct wireless_dev*,int ,int ,int ) ;
 int jiffies ;
 struct wilc_vif* netdev_priv (int ) ;

__attribute__((used)) static int mgmt_tx_cancel_wait(struct wiphy *wiphy,
          struct wireless_dev *wdev,
          u64 cookie)
{
 struct wilc_vif *vif = netdev_priv(wdev->netdev);
 struct wilc_priv *priv = &vif->priv;
 struct host_if_drv *wfi_drv = priv->hif_drv;

 wfi_drv->p2p_timeout = jiffies;

 if (!priv->p2p_listen_state) {
  struct wilc_wfi_p2p_listen_params *params;

  params = &priv->remain_on_ch_params;

  cfg80211_remain_on_channel_expired(wdev,
         params->listen_cookie,
         params->listen_ch,
         GFP_KERNEL);
 }

 return 0;
}
