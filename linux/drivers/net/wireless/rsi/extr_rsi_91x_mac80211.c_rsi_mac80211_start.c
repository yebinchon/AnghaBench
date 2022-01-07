
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsi_hw {struct rsi_common* priv; TYPE_1__* host_intf_ops; } ;
struct rsi_common {int reinit_hw; int iface_down; int mutex; int wlan_init_completion; scalar_t__ hibernate_resume; } ;
struct ieee80211_hw {int wiphy; struct rsi_hw* priv; } ;
struct TYPE_2__ {int (* reinit_device ) (struct rsi_hw*) ;} ;


 int ERR_ZONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*) ;
 int rsi_send_rx_filter_frame (struct rsi_common*,int ) ;
 int stub1 (struct rsi_hw*) ;
 int wait_for_completion (int *) ;
 int wiphy_rfkill_start_polling (int ) ;

__attribute__((used)) static int rsi_mac80211_start(struct ieee80211_hw *hw)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;

 rsi_dbg(ERR_ZONE, "===> Interface UP <===\n");
 mutex_lock(&common->mutex);
 if (common->hibernate_resume) {
  common->reinit_hw = 1;
  adapter->host_intf_ops->reinit_device(adapter);
  wait_for_completion(&adapter->priv->wlan_init_completion);
 }
 common->iface_down = 0;
 wiphy_rfkill_start_polling(hw->wiphy);
 rsi_send_rx_filter_frame(common, 0);
 mutex_unlock(&common->mutex);

 return 0;
}
