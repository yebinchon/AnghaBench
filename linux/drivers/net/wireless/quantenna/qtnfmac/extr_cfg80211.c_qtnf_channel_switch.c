
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int name; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct cfg80211_csa_settings {TYPE_2__ chandef; int block_tx; int radar_required; int count; } ;
struct TYPE_3__ {int hw_value; } ;


 int EINVAL ;
 int cfg80211_chandef_valid (TYPE_2__*) ;
 int pr_debug (char*,int ,int ,int ,int ,int ) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ,int ) ;
 int qtnf_cmd_send_chan_switch (struct qtnf_vif*,struct cfg80211_csa_settings*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int qtnf_channel_switch(struct wiphy *wiphy, struct net_device *dev,
          struct cfg80211_csa_settings *params)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);
 int ret;

 pr_debug("%s: chan(%u) count(%u) radar(%u) block_tx(%u)\n", dev->name,
   params->chandef.chan->hw_value, params->count,
   params->radar_required, params->block_tx);

 if (!cfg80211_chandef_valid(&params->chandef)) {
  pr_err("%s: invalid channel\n", dev->name);
  return -EINVAL;
 }

 ret = qtnf_cmd_send_chan_switch(vif, params);
 if (ret)
  pr_warn("%s: failed to switch to channel (%u)\n",
   dev->name, params->chandef.chan->hw_value);

 return ret;
}
