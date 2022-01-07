
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int work; } ;
struct rt2x00_dev {int hw; int flags; int intf_sta_count; int intf_ap_count; struct link link; } ;


 int DEVICE_STATE_PRESENT ;
 int DEVICE_STATE_SCANNING ;
 int LINK_TUNE_INTERVAL ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int rt2x00link_reset_tuner (struct rt2x00_dev*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00link_start_tuner(struct rt2x00_dev *rt2x00dev)
{
 struct link *link = &rt2x00dev->link;





 if (!rt2x00dev->intf_ap_count && !rt2x00dev->intf_sta_count)
  return;







 if (test_bit(DEVICE_STATE_SCANNING, &rt2x00dev->flags))
  return;

 rt2x00link_reset_tuner(rt2x00dev, 0);

 if (test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
  ieee80211_queue_delayed_work(rt2x00dev->hw,
          &link->work, LINK_TUNE_INTERVAL);
}
