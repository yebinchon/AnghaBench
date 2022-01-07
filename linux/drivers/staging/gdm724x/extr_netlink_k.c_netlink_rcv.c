
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_mutex ;
 int netlink_rcv_cb (struct sk_buff*) ;

__attribute__((used)) static void netlink_rcv(struct sk_buff *skb)
{
 mutex_lock(&netlink_mutex);
 netlink_rcv_cb(skb);
 mutex_unlock(&netlink_mutex);
}
