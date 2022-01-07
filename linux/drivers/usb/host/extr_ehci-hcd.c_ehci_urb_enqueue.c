
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {int transfer_buffer_length; TYPE_1__* dev; int pipe; } ;
struct list_head {int dummy; } ;
struct ehci_hcd {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int speed; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int INIT_LIST_HEAD (struct list_head*) ;



 int USB_SPEED_HIGH ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int intr_submit (struct ehci_hcd*,struct urb*,struct list_head*,int ) ;
 int itd_submit (struct ehci_hcd*,struct urb*,int ) ;
 int qh_urb_transaction (struct ehci_hcd*,struct urb*,struct list_head*,int ) ;
 int sitd_submit (struct ehci_hcd*,struct urb*,int ) ;
 int submit_async (struct ehci_hcd*,struct urb*,struct list_head*,int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int ehci_urb_enqueue (
 struct usb_hcd *hcd,
 struct urb *urb,
 gfp_t mem_flags
) {
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 struct list_head qtd_list;

 INIT_LIST_HEAD (&qtd_list);

 switch (usb_pipetype (urb->pipe)) {
 case 130:



  if (urb->transfer_buffer_length > (16 * 1024))
   return -EMSGSIZE;


 default:
  if (!qh_urb_transaction (ehci, urb, &qtd_list, mem_flags))
   return -ENOMEM;
  return submit_async(ehci, urb, &qtd_list, mem_flags);

 case 129:
  if (!qh_urb_transaction (ehci, urb, &qtd_list, mem_flags))
   return -ENOMEM;
  return intr_submit(ehci, urb, &qtd_list, mem_flags);

 case 128:
  if (urb->dev->speed == USB_SPEED_HIGH)
   return itd_submit (ehci, urb, mem_flags);
  else
   return sitd_submit (ehci, urb, mem_flags);
 }
}
