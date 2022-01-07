
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_device {size_t mgmt_queue_tail; size_t mgmt_queue_head; struct sk_buff** mgmt_queue_ring; } ;


 int MGMT_QUEUE_NUM ;

__attribute__((used)) static struct sk_buff *dequeue_mgmt(struct ieee80211_device *ieee)
{
 struct sk_buff *ret;

 if (ieee->mgmt_queue_tail == ieee->mgmt_queue_head)
  return ((void*)0);

 ret = ieee->mgmt_queue_ring[ieee->mgmt_queue_tail];

 ieee->mgmt_queue_tail =
  (ieee->mgmt_queue_tail + 1) % MGMT_QUEUE_NUM;

 return ret;
}
