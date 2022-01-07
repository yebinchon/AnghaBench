
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int status; int * hcpriv; } ;
struct dwc2_hsotg {int lock; int dev; } ;


 int dev_dbg (int ,char*,...) ;
 int dwc2_dump_urb_info (struct usb_hcd*,struct urb*,char*) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;
 int dwc2_hcd_urb_dequeue (struct dwc2_hsotg*,int *) ;
 int kfree (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static int _dwc2_hcd_urb_dequeue(struct usb_hcd *hcd, struct urb *urb,
     int status)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
 int rc;
 unsigned long flags;

 dev_dbg(hsotg->dev, "DWC OTG HCD URB Dequeue\n");
 dwc2_dump_urb_info(hcd, urb, "urb_dequeue");

 spin_lock_irqsave(&hsotg->lock, flags);

 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto out;

 if (!urb->hcpriv) {
  dev_dbg(hsotg->dev, "## urb->hcpriv is NULL ##\n");
  goto out;
 }

 rc = dwc2_hcd_urb_dequeue(hsotg, urb->hcpriv);

 usb_hcd_unlink_urb_from_ep(hcd, urb);

 kfree(urb->hcpriv);
 urb->hcpriv = ((void*)0);


 spin_unlock(&hsotg->lock);
 usb_hcd_giveback_urb(hcd, urb, status);
 spin_lock(&hsotg->lock);

 dev_dbg(hsotg->dev, "Called usb_hcd_giveback_urb()\n");
 dev_dbg(hsotg->dev, "  urb->status = %d\n", urb->status);
out:
 spin_unlock_irqrestore(&hsotg->lock, flags);

 return rc;
}
