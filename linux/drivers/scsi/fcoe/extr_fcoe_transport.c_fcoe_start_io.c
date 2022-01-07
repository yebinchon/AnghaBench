
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

int fcoe_start_io(struct sk_buff *skb)
{
 struct sk_buff *nskb;
 int rc;

 nskb = skb_clone(skb, GFP_ATOMIC);
 if (!nskb)
  return -ENOMEM;
 rc = dev_queue_xmit(nskb);
 if (rc != 0)
  return rc;
 kfree_skb(skb);
 return 0;
}
