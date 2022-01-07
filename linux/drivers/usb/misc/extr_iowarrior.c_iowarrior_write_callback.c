
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; struct iowarrior* context; } ;
struct iowarrior {int write_wait; int write_busy; TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int ECONNRESET ;
 int ENOENT ;
 int ESHUTDOWN ;
 int atomic_dec (int *) ;
 int dev_dbg (int *,char*,int) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void iowarrior_write_callback(struct urb *urb)
{
 struct iowarrior *dev;
 int status = urb->status;

 dev = urb->context;

 if (status &&
     !(status == -ENOENT ||
       status == -ECONNRESET || status == -ESHUTDOWN)) {
  dev_dbg(&dev->interface->dev,
   "nonzero write bulk status received: %d\n", status);
 }

 usb_free_coherent(urb->dev, urb->transfer_buffer_length,
     urb->transfer_buffer, urb->transfer_dma);

 atomic_dec(&dev->write_busy);
 wake_up_interruptible(&dev->write_wait);
}
