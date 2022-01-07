
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_intf {int beacon_skb_mutex; int delayed_flags; } ;
struct rt2x00_dev {int flags; } ;
struct ieee80211_vif {int dummy; } ;


 int DELAYED_UPDATE_BEACON ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00queue_update_beacon (struct rt2x00_dev*,struct ieee80211_vif*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 struct rt2x00_intf* vif_to_intf (struct ieee80211_vif*) ;

__attribute__((used)) static void rt2x00lib_intf_scheduled_iter(void *data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = data;
 struct rt2x00_intf *intf = vif_to_intf(vif);







 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return;

 if (test_and_clear_bit(DELAYED_UPDATE_BEACON, &intf->delayed_flags)) {
  mutex_lock(&intf->beacon_skb_mutex);
  rt2x00queue_update_beacon(rt2x00dev, vif);
  mutex_unlock(&intf->beacon_skb_mutex);
 }
}
