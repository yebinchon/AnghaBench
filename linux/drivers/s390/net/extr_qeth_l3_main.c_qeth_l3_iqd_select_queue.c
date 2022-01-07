
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int qeth_iqd_select_queue (struct net_device*,struct sk_buff*,int ,struct net_device*) ;
 int qeth_l3_get_cast_type (struct sk_buff*) ;

__attribute__((used)) static u16 qeth_l3_iqd_select_queue(struct net_device *dev, struct sk_buff *skb,
        struct net_device *sb_dev)
{
 return qeth_iqd_select_queue(dev, skb, qeth_l3_get_cast_type(skb),
         sb_dev);
}
