
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int retry_short; int retry_long; int frag_threshold; int rts_threshold; } ;
struct wilc_priv {int dev; } ;
struct wilc_vif {int ndev; struct wilc_priv priv; } ;
struct wilc {int dummy; } ;
struct cfg_param_attr {int short_retry_limit; int long_retry_limit; int frag_threshold; int rts_threshold; int flag; } ;


 int EINVAL ;
 int WILC_CFG_PARAM_FRAG_THRESHOLD ;
 int WILC_CFG_PARAM_RETRY_LONG ;
 int WILC_CFG_PARAM_RETRY_SHORT ;
 int WILC_CFG_PARAM_RTS_THRESHOLD ;
 int WIPHY_PARAM_FRAG_THRESHOLD ;
 int WIPHY_PARAM_RETRY_LONG ;
 int WIPHY_PARAM_RETRY_SHORT ;
 int WIPHY_PARAM_RTS_THRESHOLD ;
 int netdev_dbg (int ,char*,int) ;
 int netdev_err (int ,char*) ;
 struct wilc_vif* wilc_get_interface (struct wilc*) ;
 int wilc_hif_set_cfg (struct wilc_vif*,struct cfg_param_attr*) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
{
 int ret;
 struct cfg_param_attr cfg_param_val;
 struct wilc *wl = wiphy_priv(wiphy);
 struct wilc_vif *vif;
 struct wilc_priv *priv;

 vif = wilc_get_interface(wl);
 if (!vif)
  return -EINVAL;

 priv = &vif->priv;
 cfg_param_val.flag = 0;

 if (changed & WIPHY_PARAM_RETRY_SHORT) {
  netdev_dbg(vif->ndev,
      "Setting WIPHY_PARAM_RETRY_SHORT %d\n",
      wiphy->retry_short);
  cfg_param_val.flag |= WILC_CFG_PARAM_RETRY_SHORT;
  cfg_param_val.short_retry_limit = wiphy->retry_short;
 }
 if (changed & WIPHY_PARAM_RETRY_LONG) {
  netdev_dbg(vif->ndev,
      "Setting WIPHY_PARAM_RETRY_LONG %d\n",
      wiphy->retry_long);
  cfg_param_val.flag |= WILC_CFG_PARAM_RETRY_LONG;
  cfg_param_val.long_retry_limit = wiphy->retry_long;
 }
 if (changed & WIPHY_PARAM_FRAG_THRESHOLD) {
  if (wiphy->frag_threshold > 255 &&
      wiphy->frag_threshold < 7937) {
   netdev_dbg(vif->ndev,
       "Setting WIPHY_PARAM_FRAG_THRESHOLD %d\n",
       wiphy->frag_threshold);
   cfg_param_val.flag |= WILC_CFG_PARAM_FRAG_THRESHOLD;
   cfg_param_val.frag_threshold = wiphy->frag_threshold;
  } else {
   netdev_err(vif->ndev,
       "Fragmentation threshold out of range\n");
   return -EINVAL;
  }
 }

 if (changed & WIPHY_PARAM_RTS_THRESHOLD) {
  if (wiphy->rts_threshold > 255) {
   netdev_dbg(vif->ndev,
       "Setting WIPHY_PARAM_RTS_THRESHOLD %d\n",
       wiphy->rts_threshold);
   cfg_param_val.flag |= WILC_CFG_PARAM_RTS_THRESHOLD;
   cfg_param_val.rts_threshold = wiphy->rts_threshold;
  } else {
   netdev_err(vif->ndev, "RTS threshold out of range\n");
   return -EINVAL;
  }
 }

 ret = wilc_hif_set_cfg(vif, &cfg_param_val);
 if (ret)
  netdev_err(priv->dev, "Error in setting WIPHY PARAMS\n");

 return ret;
}
