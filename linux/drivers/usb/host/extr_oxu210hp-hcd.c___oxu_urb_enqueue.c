
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* dev; int pipe; } ;
struct oxu_hcd {int dummy; } ;
struct list_head {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int speed; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (struct list_head*) ;




 int USB_SPEED_HIGH ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int intr_submit (struct oxu_hcd*,struct urb*,struct list_head*,int ) ;
 int itd_submit (struct oxu_hcd*,struct urb*,int ) ;
 int qh_urb_transaction (struct oxu_hcd*,struct urb*,struct list_head*,int ) ;
 int sitd_submit (struct oxu_hcd*,struct urb*,int ) ;
 int submit_async (struct oxu_hcd*,struct urb*,struct list_head*,int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int __oxu_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
    gfp_t mem_flags)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 struct list_head qtd_list;

 INIT_LIST_HEAD(&qtd_list);

 switch (usb_pipetype(urb->pipe)) {
 case 130:
 case 131:
 default:
  if (!qh_urb_transaction(oxu, urb, &qtd_list, mem_flags))
   return -ENOMEM;
  return submit_async(oxu, urb, &qtd_list, mem_flags);

 case 129:
  if (!qh_urb_transaction(oxu, urb, &qtd_list, mem_flags))
   return -ENOMEM;
  return intr_submit(oxu, urb, &qtd_list, mem_flags);

 case 128:
  if (urb->dev->speed == USB_SPEED_HIGH)
   return itd_submit(oxu, urb, mem_flags);
  else
   return sitd_submit(oxu, urb, mem_flags);
 }
}
