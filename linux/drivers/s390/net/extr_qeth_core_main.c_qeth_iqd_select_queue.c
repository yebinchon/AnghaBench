
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int QETH_IQD_MCAST_TXQ ;
 int QETH_IQD_MIN_UCAST_TXQ ;
 scalar_t__ RTN_UNICAST ;

u16 qeth_iqd_select_queue(struct net_device *dev, struct sk_buff *skb,
     u8 cast_type, struct net_device *sb_dev)
{
 if (cast_type != RTN_UNICAST)
  return QETH_IQD_MCAST_TXQ;
 return QETH_IQD_MIN_UCAST_TXQ;
}
