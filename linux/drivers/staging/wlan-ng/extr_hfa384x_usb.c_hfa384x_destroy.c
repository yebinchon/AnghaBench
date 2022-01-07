
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hfa384x {scalar_t__ state; int authq; int * scanresults; } ;


 scalar_t__ HFA384x_STATE_PREINIT ;
 scalar_t__ HFA384x_STATE_RUNNING ;
 int dev_kfree_skb (struct sk_buff*) ;
 int hfa384x_drvr_stop (struct hfa384x*) ;
 int kfree (int *) ;
 struct sk_buff* skb_dequeue (int *) ;

void hfa384x_destroy(struct hfa384x *hw)
{
 struct sk_buff *skb;

 if (hw->state == HFA384x_STATE_RUNNING)
  hfa384x_drvr_stop(hw);
 hw->state = HFA384x_STATE_PREINIT;

 kfree(hw->scanresults);
 hw->scanresults = ((void*)0);


 while ((skb = skb_dequeue(&hw->authq)))
  dev_kfree_skb(skb);
}
