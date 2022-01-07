
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int actual_length; int transfer_buffer; struct pn533_usb_phy* context; } ;
struct sk_buff {int dummy; } ;
struct pn533_usb_phy {int priv; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int nfc_err (int *,char*) ;
 int pn533_recv_frame (int ,struct sk_buff*,int ) ;
 int skb_put_data (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void pn533_recv_response(struct urb *urb)
{
 struct pn533_usb_phy *phy = urb->context;
 struct sk_buff *skb = ((void*)0);

 if (!urb->status) {
  skb = alloc_skb(urb->actual_length, GFP_ATOMIC);
  if (!skb) {
   nfc_err(&phy->udev->dev, "failed to alloc memory\n");
  } else {
   skb_put_data(skb, urb->transfer_buffer,
         urb->actual_length);
  }
 }

 pn533_recv_frame(phy->priv, skb, urb->status);
}
