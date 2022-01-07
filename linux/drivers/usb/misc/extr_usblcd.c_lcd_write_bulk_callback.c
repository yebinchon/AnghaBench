
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_lcd {int limit_sem; TYPE_1__* interface; } ;
struct urb {int status; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; struct usb_lcd* context; } ;
struct TYPE_2__ {int dev; } ;


 int ECONNRESET ;
 int ENOENT ;
 int ESHUTDOWN ;
 int dev_dbg (int *,char*,int) ;
 int up (int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void lcd_write_bulk_callback(struct urb *urb)
{
 struct usb_lcd *dev;
 int status = urb->status;

 dev = urb->context;


 if (status &&
     !(status == -ENOENT ||
       status == -ECONNRESET ||
       status == -ESHUTDOWN)) {
  dev_dbg(&dev->interface->dev,
   "nonzero write bulk status received: %d\n", status);
 }


 usb_free_coherent(urb->dev, urb->transfer_buffer_length,
     urb->transfer_buffer, urb->transfer_dma);
 up(&dev->limit_sem);
}
