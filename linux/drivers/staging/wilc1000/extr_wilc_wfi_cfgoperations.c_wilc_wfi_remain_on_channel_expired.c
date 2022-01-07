
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct wilc_wfi_p2p_listen_params {scalar_t__ listen_cookie; int listen_ch; } ;
struct wilc_priv {int p2p_listen_state; int wdev; struct wilc_wfi_p2p_listen_params remain_on_ch_params; } ;
struct wilc_vif {struct wilc_priv priv; } ;


 int GFP_KERNEL ;
 int cfg80211_remain_on_channel_expired (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void wilc_wfi_remain_on_channel_expired(void *data, u64 cookie)
{
 struct wilc_vif *vif = data;
 struct wilc_priv *priv = &vif->priv;
 struct wilc_wfi_p2p_listen_params *params = &priv->remain_on_ch_params;

 if (cookie != params->listen_cookie)
  return;

 priv->p2p_listen_state = 0;

 cfg80211_remain_on_channel_expired(&priv->wdev, params->listen_cookie,
        params->listen_ch, GFP_KERNEL);
}
