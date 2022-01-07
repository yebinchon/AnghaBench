
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct wireless_dev {scalar_t__ iftype; int netdev; } ;
struct wiphy {int dummy; } ;
struct TYPE_5__ {unsigned int listen_duration; scalar_t__ listen_cookie; struct ieee80211_channel* listen_ch; } ;
struct wilc_priv {scalar_t__ inc_roc_cookie; int p2p_listen_state; TYPE_2__ remain_on_ch_params; } ;
struct wilc_vif {TYPE_3__* hif_drv; TYPE_1__* wilc; int ndev; struct wilc_priv priv; } ;
struct ieee80211_channel {int hw_value; } ;
struct TYPE_6__ {int remain_on_ch_timer; } ;
struct TYPE_4__ {int op_ch; } ;


 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int cfg80211_ready_on_channel (struct wireless_dev*,scalar_t__,struct ieee80211_channel*,unsigned int,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int netdev_dbg (int ,char*) ;
 struct wilc_vif* netdev_priv (int ) ;
 int wilc_remain_on_channel (struct wilc_vif*,scalar_t__,unsigned int,int ,int ,void*) ;
 int wilc_wfi_remain_on_channel_expired ;

__attribute__((used)) static int remain_on_channel(struct wiphy *wiphy,
        struct wireless_dev *wdev,
        struct ieee80211_channel *chan,
        unsigned int duration, u64 *cookie)
{
 int ret = 0;
 struct wilc_vif *vif = netdev_priv(wdev->netdev);
 struct wilc_priv *priv = &vif->priv;
 u64 id;

 if (wdev->iftype == NL80211_IFTYPE_AP) {
  netdev_dbg(vif->ndev, "Required while in AP mode\n");
  return ret;
 }

 id = ++priv->inc_roc_cookie;
 if (id == 0)
  id = ++priv->inc_roc_cookie;

 ret = wilc_remain_on_channel(vif, id, duration, chan->hw_value,
         wilc_wfi_remain_on_channel_expired,
         (void *)vif);
 if (ret)
  return ret;

 vif->wilc->op_ch = chan->hw_value;

 priv->remain_on_ch_params.listen_ch = chan;
 priv->remain_on_ch_params.listen_cookie = id;
 *cookie = id;
 priv->p2p_listen_state = 1;
 priv->remain_on_ch_params.listen_duration = duration;

 cfg80211_ready_on_channel(wdev, *cookie, chan, duration, GFP_KERNEL);
 mod_timer(&vif->hif_drv->remain_on_ch_timer,
    jiffies + msecs_to_jiffies(duration));

 return ret;
}
