
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_tt_clear {int tt; int devinfo; int clear_list; int ep; int hcd; } ;
struct usb_tt {int lock; int clear_work; int clear_list; scalar_t__ multi; } ;
struct usb_device {int ttport; int bus; scalar_t__ devaddr; int dev; struct usb_tt* tt; } ;
struct urb {int pipe; int ep; struct usb_device* dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_CONTROL ;
 int bus_to_hcd (int ) ;
 int dev_err (int *,char*) ;
 struct usb_tt_clear* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_pipecontrol (int) ;
 int usb_pipeendpoint (int) ;
 scalar_t__ usb_pipein (int) ;

int usb_hub_clear_tt_buffer(struct urb *urb)
{
 struct usb_device *udev = urb->dev;
 int pipe = urb->pipe;
 struct usb_tt *tt = udev->tt;
 unsigned long flags;
 struct usb_tt_clear *clear;





 clear = kmalloc(sizeof *clear, GFP_ATOMIC);
 if (clear == ((void*)0)) {
  dev_err(&udev->dev, "can't save CLEAR_TT_BUFFER state\n");

  return -ENOMEM;
 }


 clear->tt = tt->multi ? udev->ttport : 1;
 clear->devinfo = usb_pipeendpoint (pipe);
 clear->devinfo |= ((u16)udev->devaddr) << 4;
 clear->devinfo |= usb_pipecontrol(pipe)
   ? (USB_ENDPOINT_XFER_CONTROL << 11)
   : (USB_ENDPOINT_XFER_BULK << 11);
 if (usb_pipein(pipe))
  clear->devinfo |= 1 << 15;


 clear->hcd = bus_to_hcd(udev->bus);
 clear->ep = urb->ep;


 spin_lock_irqsave(&tt->lock, flags);
 list_add_tail(&clear->clear_list, &tt->clear_list);
 schedule_work(&tt->clear_work);
 spin_unlock_irqrestore(&tt->lock, flags);
 return 0;
}
