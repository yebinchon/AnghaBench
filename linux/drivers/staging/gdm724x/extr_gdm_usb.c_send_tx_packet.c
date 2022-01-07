
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_tx {int urb; int buf; } ;
struct usb_device {int dev; } ;


 int GFP_ATOMIC ;
 int dev_err (int *,char*,int) ;
 int gdm_usb_send_complete ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int,int ,struct usb_tx*) ;
 int usb_mark_last_busy (struct usb_device*) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int send_tx_packet(struct usb_device *usbdev, struct usb_tx *t, u32 len)
{
 int ret = 0;

 if (!(len % 512))
  len++;

 usb_fill_bulk_urb(t->urb,
     usbdev,
     usb_sndbulkpipe(usbdev, 2),
     t->buf,
     len,
     gdm_usb_send_complete,
     t);

 ret = usb_submit_urb(t->urb, GFP_ATOMIC);

 if (ret)
  dev_err(&usbdev->dev, "usb_submit_urb failed: %d\n",
   ret);

 usb_mark_last_busy(usbdev);

 return ret;
}
