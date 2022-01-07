
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_device {int mgmt_queue_head; struct sk_buff** mgmt_queue_ring; } ;


 int MGMT_QUEUE_NUM ;

__attribute__((used)) static void enqueue_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb)
{
 int nh;

 nh = (ieee->mgmt_queue_head + 1) % MGMT_QUEUE_NUM;
 ieee->mgmt_queue_head = nh;
 ieee->mgmt_queue_ring[nh] = skb;


}
