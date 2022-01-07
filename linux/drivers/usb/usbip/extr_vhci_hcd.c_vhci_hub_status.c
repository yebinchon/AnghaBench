
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_hcd {int* port_status; struct vhci* vhci; } ;
struct vhci {int lock; } ;
struct usb_hcd {scalar_t__ state; } ;


 int DIV_ROUND_UP (int,int) ;
 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 scalar_t__ HC_STATE_SUSPENDED ;
 int PORT_C_MASK ;
 int VHCI_HC_PORTS ;
 struct vhci_hcd* hcd_to_vhci_hcd (struct usb_hcd*) ;
 int memset (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;
 int usbip_dbg_vhci_rh (char*,...) ;

__attribute__((used)) static int vhci_hub_status(struct usb_hcd *hcd, char *buf)
{
 struct vhci_hcd *vhci_hcd = hcd_to_vhci_hcd(hcd);
 struct vhci *vhci = vhci_hcd->vhci;
 int retval = DIV_ROUND_UP(VHCI_HC_PORTS + 1, 8);
 int rhport;
 int changed = 0;
 unsigned long flags;

 memset(buf, 0, retval);

 spin_lock_irqsave(&vhci->lock, flags);
 if (!HCD_HW_ACCESSIBLE(hcd)) {
  usbip_dbg_vhci_rh("hw accessible flag not on?\n");
  goto done;
 }


 for (rhport = 0; rhport < VHCI_HC_PORTS; rhport++) {
  if ((vhci_hcd->port_status[rhport] & PORT_C_MASK)) {

   usbip_dbg_vhci_rh("port %d status changed\n", rhport);

   buf[(rhport + 1) / 8] |= 1 << (rhport + 1) % 8;
   changed = 1;
  }
 }

 if ((hcd->state == HC_STATE_SUSPENDED) && (changed == 1))
  usb_hcd_resume_root_hub(hcd);

done:
 spin_unlock_irqrestore(&vhci->lock, flags);
 return changed ? retval : 0;
}
