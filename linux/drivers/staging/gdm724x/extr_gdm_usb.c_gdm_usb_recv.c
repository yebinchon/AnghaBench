
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_rx {int (* callback ) (void*,void*,int,int) ;int rx_submit_list; int urb; int buf; struct rx_cxt* rx; void* index; void* cb_data; } ;
struct usb_device {int dummy; } ;
struct rx_cxt {int submit_lock; int rx_submit_list; } ;
struct lte_udev {int (* rx_cb ) (void*,void*,int,int) ;struct usb_device* usbdev; struct rx_cxt rx; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int KERNEL_THREAD ;
 int RX_BUF_SIZE ;
 int gdm_usb_rcv_complete ;
 struct usb_rx* get_rx_struct (struct rx_cxt*,int*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int pr_err (char*,...) ;
 int put_rx_struct (struct rx_cxt*,struct usb_rx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int ,int ,struct usb_rx*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int gdm_usb_recv(void *priv_dev,
   int (*cb)(void *cb_data,
      void *data, int len, int context),
   void *cb_data,
   int context)
{
 struct lte_udev *udev = priv_dev;
 struct usb_device *usbdev = udev->usbdev;
 struct rx_cxt *rx = &udev->rx;
 struct usb_rx *r;
 int no_spc;
 int ret;
 unsigned long flags;

 if (!udev->usbdev) {
  pr_err("invalid device\n");
  return -ENODEV;
 }

 r = get_rx_struct(rx, &no_spc);
 if (!r) {
  pr_err("Out of Memory\n");
  return -ENOMEM;
 }

 udev->rx_cb = cb;
 r->callback = cb;
 r->cb_data = cb_data;
 r->index = (void *)udev;
 r->rx = rx;

 usb_fill_bulk_urb(r->urb,
     usbdev,
     usb_rcvbulkpipe(usbdev, 0x83),
     r->buf,
     RX_BUF_SIZE,
     gdm_usb_rcv_complete,
     r);

 spin_lock_irqsave(&rx->submit_lock, flags);
 list_add_tail(&r->rx_submit_list, &rx->rx_submit_list);
 spin_unlock_irqrestore(&rx->submit_lock, flags);

 if (context == KERNEL_THREAD)
  ret = usb_submit_urb(r->urb, GFP_KERNEL);
 else
  ret = usb_submit_urb(r->urb, GFP_ATOMIC);

 if (ret) {
  spin_lock_irqsave(&rx->submit_lock, flags);
  list_del(&r->rx_submit_list);
  spin_unlock_irqrestore(&rx->submit_lock, flags);

  pr_err("usb_submit_urb failed (%p)\n", r);
  put_rx_struct(rx, r);
 }

 return ret;
}
