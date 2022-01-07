
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int name; } ;
struct cfg80211_chan_def {int dummy; } ;


 int ENOTSUPP ;
 int NL80211_EXT_FEATURE_DFS_OFFLOAD ;
 int pr_err (char*,int ,int) ;
 int qtnf_cmd_start_cac (struct qtnf_vif*,struct cfg80211_chan_def*,int ) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 scalar_t__ wiphy_ext_feature_isset (struct wiphy*,int ) ;

__attribute__((used)) static int qtnf_start_radar_detection(struct wiphy *wiphy,
          struct net_device *ndev,
          struct cfg80211_chan_def *chandef,
          u32 cac_time_ms)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
 int ret;

 if (wiphy_ext_feature_isset(wiphy, NL80211_EXT_FEATURE_DFS_OFFLOAD))
  return -ENOTSUPP;

 ret = qtnf_cmd_start_cac(vif, chandef, cac_time_ms);
 if (ret)
  pr_err("%s: failed to start CAC ret=%d\n", ndev->name, ret);

 return ret;
}
