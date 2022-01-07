
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fcoe_ctlr {int recv_work; int fip_recv_list; } ;


 int GFP_ATOMIC ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

void fcoe_ctlr_recv(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  return;
 skb_queue_tail(&fip->fip_recv_list, skb);
 schedule_work(&fip->recv_work);
}
