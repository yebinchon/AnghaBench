
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vhci {TYPE_2__* vhci_hcd_ss; TYPE_1__* vhci_hcd_hs; } ;
struct TYPE_8__ {int sg_tablesize; int no_sg_constraint; TYPE_3__* root_hub; int controller; } ;
struct usb_hcd {TYPE_4__ self; int speed; } ;
struct TYPE_7__ {int speed; } ;
struct TYPE_6__ {struct vhci* vhci; } ;
struct TYPE_5__ {struct vhci* vhci; } ;


 int HCD_USB2 ;
 int HCD_USB3 ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_SUPER ;
 scalar_t__ dev_get_platdata (int ) ;
 void* hcd_to_vhci_hcd (struct usb_hcd*) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;

__attribute__((used)) static int vhci_setup(struct usb_hcd *hcd)
{
 struct vhci *vhci = *((void **)dev_get_platdata(hcd->self.controller));
 if (usb_hcd_is_primary_hcd(hcd)) {
  vhci->vhci_hcd_hs = hcd_to_vhci_hcd(hcd);
  vhci->vhci_hcd_hs->vhci = vhci;





  hcd->speed = HCD_USB2;
  hcd->self.root_hub->speed = USB_SPEED_HIGH;
 } else {
  vhci->vhci_hcd_ss = hcd_to_vhci_hcd(hcd);
  vhci->vhci_hcd_ss->vhci = vhci;
  hcd->speed = HCD_USB3;
  hcd->self.root_hub->speed = USB_SPEED_SUPER;
 }






 hcd->self.sg_tablesize = 32;
 hcd->self.no_sg_constraint = 1;

 return 0;
}
