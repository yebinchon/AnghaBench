
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data_len; int len; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int RCVPOST_BUF_SIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;

__attribute__((used)) static struct sk_buff *alloc_rcv_buf(struct net_device *netdev)
{
 struct sk_buff *skb;





 skb = alloc_skb(RCVPOST_BUF_SIZE, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);
 skb->dev = netdev;




 skb->len = RCVPOST_BUF_SIZE;

 skb->data_len = 0;
 return skb;
}
