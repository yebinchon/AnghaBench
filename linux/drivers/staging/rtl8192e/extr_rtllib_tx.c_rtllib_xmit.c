
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int cb; } ;
struct net_device {int dummy; } ;


 int memset (int ,int ,int) ;
 int rtllib_xmit_inter (struct sk_buff*,struct net_device*) ;

int rtllib_xmit(struct sk_buff *skb, struct net_device *dev)
{
 memset(skb->cb, 0, sizeof(skb->cb));
 return rtllib_xmit_inter(skb, dev);
}
