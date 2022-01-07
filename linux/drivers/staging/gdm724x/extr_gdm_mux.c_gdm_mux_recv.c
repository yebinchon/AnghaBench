
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct rx_cxt {int submit_list_lock; int rx_submit_list; } ;
struct mux_rx {int (* callback ) (void*,int,int,struct tty_dev*,int) ;int rx_submit_list; int urb; int buf; void* mux_dev; scalar_t__ offset; } ;
struct mux_dev {int (* rx_cb ) (void*,int,int,struct tty_dev*,int) ;struct rx_cxt rx; struct usb_device* usbdev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MUX_RX_MAX_SIZE ;
 int gdm_mux_rcv_complete ;
 struct mux_rx* get_rx_struct (struct rx_cxt*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int pr_err (char*,...) ;
 int put_rx_struct (struct rx_cxt*,struct mux_rx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int ,int ,struct mux_rx*) ;
 int usb_mark_last_busy (struct usb_device*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int gdm_mux_recv(void *priv_dev,
   int (*cb)(void *data, int len, int tty_index,
      struct tty_dev *tty_dev, int complete))
{
 struct mux_dev *mux_dev = priv_dev;
 struct usb_device *usbdev = mux_dev->usbdev;
 struct mux_rx *r;
 struct rx_cxt *rx = &mux_dev->rx;
 unsigned long flags;
 int ret;

 if (!usbdev) {
  pr_err("device is disconnected\n");
  return -ENODEV;
 }

 r = get_rx_struct(rx);
 if (!r) {
  pr_err("get_rx_struct fail\n");
  return -ENOMEM;
 }

 r->offset = 0;
 r->mux_dev = (void *)mux_dev;
 r->callback = cb;
 mux_dev->rx_cb = cb;

 usb_fill_bulk_urb(r->urb,
     usbdev,
     usb_rcvbulkpipe(usbdev, 0x86),
     r->buf,
     MUX_RX_MAX_SIZE,
     gdm_mux_rcv_complete,
     r);

 spin_lock_irqsave(&rx->submit_list_lock, flags);
 list_add_tail(&r->rx_submit_list, &rx->rx_submit_list);
 spin_unlock_irqrestore(&rx->submit_list_lock, flags);

 ret = usb_submit_urb(r->urb, GFP_KERNEL);

 if (ret) {
  spin_lock_irqsave(&rx->submit_list_lock, flags);
  list_del(&r->rx_submit_list);
  spin_unlock_irqrestore(&rx->submit_list_lock, flags);

  put_rx_struct(rx, r);

  pr_err("usb_submit_urb ret=%d\n", ret);
 }

 usb_mark_last_busy(usbdev);

 return ret;
}
