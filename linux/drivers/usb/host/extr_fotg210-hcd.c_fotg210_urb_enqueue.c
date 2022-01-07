
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int transfer_buffer_length; int pipe; } ;
struct list_head {int dummy; } ;
struct fotg210_hcd {int dummy; } ;
typedef int gfp_t ;


 int EMSGSIZE ;
 int ENOMEM ;
 int INIT_LIST_HEAD (struct list_head*) ;



 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int intr_submit (struct fotg210_hcd*,struct urb*,struct list_head*,int ) ;
 int itd_submit (struct fotg210_hcd*,struct urb*,int ) ;
 int qh_urb_transaction (struct fotg210_hcd*,struct urb*,struct list_head*,int ) ;
 int submit_async (struct fotg210_hcd*,struct urb*,struct list_head*,int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int fotg210_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
  gfp_t mem_flags)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 struct list_head qtd_list;

 INIT_LIST_HEAD(&qtd_list);

 switch (usb_pipetype(urb->pipe)) {
 case 130:



  if (urb->transfer_buffer_length > (16 * 1024))
   return -EMSGSIZE;


 default:
  if (!qh_urb_transaction(fotg210, urb, &qtd_list, mem_flags))
   return -ENOMEM;
  return submit_async(fotg210, urb, &qtd_list, mem_flags);

 case 129:
  if (!qh_urb_transaction(fotg210, urb, &qtd_list, mem_flags))
   return -ENOMEM;
  return intr_submit(fotg210, urb, &qtd_list, mem_flags);

 case 128:
  return itd_submit(fotg210, urb, mem_flags);
 }
}
