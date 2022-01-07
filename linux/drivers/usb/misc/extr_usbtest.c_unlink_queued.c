
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct usbtest_dev {TYPE_1__* intf; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct queued_ctx {unsigned int num; int status; TYPE_2__** urbs; int complete; int pending; } ;
typedef int dma_addr_t ;
struct TYPE_11__ {int transfer_flags; int pipe; int transfer_dma; } ;
struct TYPE_10__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int URB_ZERO_PACKET ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int complete (int *) ;
 int dev_err (int *,char*,int,int) ;
 int init_completion (int *) ;
 TYPE_2__** kcalloc (unsigned int,int,int ) ;
 int kfree (TYPE_2__**) ;
 int memset (void*,int ,unsigned int) ;
 int simple_fill_buf (TYPE_2__*) ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int unlink_queued_callback ;
 void* usb_alloc_coherent (struct usb_device*,unsigned int,int ,int *) ;
 TYPE_2__* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (TYPE_2__*,struct usb_device*,int,void*,unsigned int,int ,struct queued_ctx*) ;
 int usb_free_coherent (struct usb_device*,unsigned int,void*,int ) ;
 int usb_free_urb (TYPE_2__*) ;
 scalar_t__ usb_pipeout (int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 int usb_unlink_urb (TYPE_2__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int unlink_queued(struct usbtest_dev *dev, int pipe, unsigned num,
  unsigned size)
{
 struct queued_ctx ctx;
 struct usb_device *udev = testdev_to_usbdev(dev);
 void *buf;
 dma_addr_t buf_dma;
 int i;
 int retval = -ENOMEM;

 init_completion(&ctx.complete);
 atomic_set(&ctx.pending, 1);
 ctx.num = num;
 ctx.status = 0;

 buf = usb_alloc_coherent(udev, size, GFP_KERNEL, &buf_dma);
 if (!buf)
  return retval;
 memset(buf, 0, size);


 ctx.urbs = kcalloc(num, sizeof(struct urb *), GFP_KERNEL);
 if (!ctx.urbs)
  goto free_buf;
 for (i = 0; i < num; i++) {
  ctx.urbs[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!ctx.urbs[i])
   goto free_urbs;
  usb_fill_bulk_urb(ctx.urbs[i], udev, pipe, buf, size,
    unlink_queued_callback, &ctx);
  ctx.urbs[i]->transfer_dma = buf_dma;
  ctx.urbs[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;

  if (usb_pipeout(ctx.urbs[i]->pipe)) {
   simple_fill_buf(ctx.urbs[i]);
   ctx.urbs[i]->transfer_flags |= URB_ZERO_PACKET;
  }
 }


 for (i = 0; i < num; i++) {
  atomic_inc(&ctx.pending);
  retval = usb_submit_urb(ctx.urbs[i], GFP_KERNEL);
  if (retval != 0) {
   dev_err(&dev->intf->dev, "submit urbs[%d] fail %d\n",
     i, retval);
   atomic_dec(&ctx.pending);
   ctx.status = retval;
   break;
  }
 }
 if (i == num) {
  usb_unlink_urb(ctx.urbs[num - 4]);
  usb_unlink_urb(ctx.urbs[num - 2]);
 } else {
  while (--i >= 0)
   usb_unlink_urb(ctx.urbs[i]);
 }

 if (atomic_dec_and_test(&ctx.pending))
  complete(&ctx.complete);
 wait_for_completion(&ctx.complete);
 retval = ctx.status;

 free_urbs:
 for (i = 0; i < num; i++)
  usb_free_urb(ctx.urbs[i]);
 kfree(ctx.urbs);
 free_buf:
 usb_free_coherent(udev, size, buf, buf_dma);
 return retval;
}
