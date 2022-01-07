
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int * data; } ;
struct microread_info {int async_cb_type; int async_cb_context; int (* async_cb ) (int ,struct sk_buff*,int) ;} ;


 int EPROTO ;

 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_result_to_errno (int ) ;
 int skb_trim (struct sk_buff*,int ) ;
 int stub1 (int ,struct sk_buff*,int) ;
 int stub2 (int ,struct sk_buff*,int) ;
 int stub3 (int ,struct sk_buff*,int) ;

__attribute__((used)) static void microread_im_transceive_cb(void *context, struct sk_buff *skb,
           int err)
{
 struct microread_info *info = context;

 switch (info->async_cb_type) {
 case 128:
  if (err == 0) {
   if (skb->len == 0) {
    err = -EPROTO;
    kfree_skb(skb);
    info->async_cb(info->async_cb_context, ((void*)0),
            -EPROTO);
    return;
   }

   if (skb->data[skb->len - 1] != 0) {
    err = nfc_hci_result_to_errno(
             skb->data[skb->len - 1]);
    kfree_skb(skb);
    info->async_cb(info->async_cb_context, ((void*)0),
            err);
    return;
   }

   skb_trim(skb, skb->len - 1);
  }
  info->async_cb(info->async_cb_context, skb, err);
  break;
 default:
  if (err == 0)
   kfree_skb(skb);
  break;
 }
}
