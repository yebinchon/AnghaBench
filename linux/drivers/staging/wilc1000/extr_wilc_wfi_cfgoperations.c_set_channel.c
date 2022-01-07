
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wiphy {int dummy; } ;
struct wilc_vif {int ndev; } ;
struct wilc {int vif_mutex; int op_ch; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_2__ {int center_freq; } ;


 scalar_t__ IS_ERR (struct wilc_vif*) ;
 int PTR_ERR (struct wilc_vif*) ;
 int ieee80211_frequency_to_channel (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*) ;
 struct wilc_vif* wilc_get_wl_to_vif (struct wilc*) ;
 int wilc_set_mac_chnl_num (struct wilc_vif*,int ) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int set_channel(struct wiphy *wiphy,
         struct cfg80211_chan_def *chandef)
{
 struct wilc *wl = wiphy_priv(wiphy);
 struct wilc_vif *vif;
 u32 channelnum;
 int result;

 mutex_lock(&wl->vif_mutex);
 vif = wilc_get_wl_to_vif(wl);
 if (IS_ERR(vif)) {
  mutex_unlock(&wl->vif_mutex);
  return PTR_ERR(vif);
 }

 channelnum = ieee80211_frequency_to_channel(chandef->chan->center_freq);

 wl->op_ch = channelnum;
 result = wilc_set_mac_chnl_num(vif, channelnum);
 if (result)
  netdev_err(vif->ndev, "Error in setting channel\n");

 mutex_unlock(&wl->vif_mutex);
 return result;
}
