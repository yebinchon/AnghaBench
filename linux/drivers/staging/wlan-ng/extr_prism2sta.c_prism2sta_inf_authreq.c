
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {struct hfa384x* priv; } ;
struct sk_buff {int data; } ;
struct hfa384x_inf_frame {int dummy; } ;
struct hfa384x {int link_bh; int authq; } ;


 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (int ,struct hfa384x_inf_frame*,int) ;
 int schedule_work (int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void prism2sta_inf_authreq(struct wlandevice *wlandev,
      struct hfa384x_inf_frame *inf)
{
 struct hfa384x *hw = wlandev->priv;
 struct sk_buff *skb;

 skb = dev_alloc_skb(sizeof(*inf));
 if (skb) {
  skb_put(skb, sizeof(*inf));
  memcpy(skb->data, inf, sizeof(*inf));
  skb_queue_tail(&hw->authq, skb);
  schedule_work(&hw->link_bh);
 }
}
