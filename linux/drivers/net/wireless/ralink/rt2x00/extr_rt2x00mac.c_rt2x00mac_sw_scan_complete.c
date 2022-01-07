
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int DEVICE_STATE_SCANNING ;
 int clear_bit (int ,int *) ;
 int rt2x00link_start_tuner (struct rt2x00_dev*) ;

void rt2x00mac_sw_scan_complete(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 clear_bit(DEVICE_STATE_SCANNING, &rt2x00dev->flags);
 rt2x00link_start_tuner(rt2x00dev);
}
