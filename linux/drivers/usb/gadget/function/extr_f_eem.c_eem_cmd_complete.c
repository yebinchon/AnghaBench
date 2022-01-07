
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ context; } ;
struct usb_ep {int dummy; } ;
struct sk_buff {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static void eem_cmd_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct sk_buff *skb = (struct sk_buff *)req->context;

 dev_kfree_skb_any(skb);
}
