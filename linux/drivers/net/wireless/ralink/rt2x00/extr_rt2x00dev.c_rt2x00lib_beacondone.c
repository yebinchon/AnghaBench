
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int hw; int flags; } ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct rt2x00_dev*) ;
 scalar_t__ rt2x00_has_cap_pre_tbtt_interrupt (struct rt2x00_dev*) ;
 int rt2x00lib_bc_buffer_iter ;
 int rt2x00lib_beaconupdate_iter ;
 int test_bit (int ,int *) ;

void rt2x00lib_beacondone(struct rt2x00_dev *rt2x00dev)
{
 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return;


 ieee80211_iterate_active_interfaces_atomic(
  rt2x00dev->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  rt2x00lib_bc_buffer_iter, rt2x00dev);





 if (rt2x00_has_cap_pre_tbtt_interrupt(rt2x00dev))
  return;


 ieee80211_iterate_active_interfaces_atomic(
  rt2x00dev->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  rt2x00lib_beaconupdate_iter, rt2x00dev);
}
