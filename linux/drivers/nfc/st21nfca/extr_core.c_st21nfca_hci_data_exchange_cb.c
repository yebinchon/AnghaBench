
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st21nfca_hci_info {int async_cb_type; int async_cb_context; int (* async_cb ) (int ,struct sk_buff*,int) ;} ;
struct sk_buff {int len; } ;



 int kfree_skb (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;
 int stub1 (int ,struct sk_buff*,int) ;

__attribute__((used)) static void st21nfca_hci_data_exchange_cb(void *context, struct sk_buff *skb,
       int err)
{
 struct st21nfca_hci_info *info = context;

 switch (info->async_cb_type) {
 case 128:
  if (err == 0)
   skb_trim(skb, skb->len - 1);
  info->async_cb(info->async_cb_context, skb, err);
  break;
 default:
  if (err == 0)
   kfree_skb(skb);
  break;
 }
}
