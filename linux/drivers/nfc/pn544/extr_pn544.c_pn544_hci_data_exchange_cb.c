
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pn544_hci_info {int async_cb_type; int async_cb_context; int (* async_cb ) (int ,struct sk_buff*,int) ;} ;



 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (int ,struct sk_buff*,int) ;

__attribute__((used)) static void pn544_hci_data_exchange_cb(void *context, struct sk_buff *skb,
           int err)
{
 struct pn544_hci_info *info = context;

 switch (info->async_cb_type) {
 case 128:
  if (err == 0)
   skb_pull(skb, 1);
  info->async_cb(info->async_cb_context, skb, err);
  break;
 default:
  if (err == 0)
   kfree_skb(skb);
  break;
 }
}
