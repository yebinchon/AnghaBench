
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhci_usb {int transfer_confirm; int vroot_hub; int hc_list; struct fhci_hcd* fhci; } ;
struct fhci_hcd {int vroot_hub; int hc_list; } ;


 int GFP_KERNEL ;
 int fhci_transfer_confirm_callback ;
 struct fhci_usb* kzalloc (int,int ) ;

__attribute__((used)) static struct fhci_usb *fhci_create_lld(struct fhci_hcd *fhci)
{
 struct fhci_usb *usb;


 usb = kzalloc(sizeof(*usb), GFP_KERNEL);
 if (!usb)
  return ((void*)0);

 usb->fhci = fhci;
 usb->hc_list = fhci->hc_list;
 usb->vroot_hub = fhci->vroot_hub;

 usb->transfer_confirm = fhci_transfer_confirm_callback;

 return usb;
}
