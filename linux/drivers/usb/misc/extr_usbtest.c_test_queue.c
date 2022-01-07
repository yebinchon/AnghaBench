
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtest_param_32 {int sglen; int iterations; int length; } ;
struct usbtest_dev {TYPE_1__* intf; } ;
struct usb_endpoint_descriptor {int bInterval; } ;
struct usb_device {scalar_t__ speed; } ;
struct urb {struct transfer_context* context; scalar_t__ number_of_packets; } ;
struct transfer_context {int count; int is_iso; int submit_error; int errors; int packet_count; int done; int lock; int pending; struct usbtest_dev* dev; } ;
typedef int context ;
struct TYPE_2__ {int dev; } ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ERROR (struct usbtest_dev*,char*,unsigned int,int) ;
 int GFP_ATOMIC ;
 int MAX_SGLEN ;
 int UINT_MAX ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_SUPER ;
 struct urb* complicated_alloc_urb (struct usb_device*,int,int ,int ) ;
 int dev_info (int *,char*,unsigned long,...) ;
 int init_completion (int *) ;
 struct urb* iso_alloc_urb (struct usb_device*,int,struct usb_endpoint_descriptor*,int ,unsigned int) ;
 int memset (struct transfer_context*,int ,int) ;
 int simple_free_urb (struct urb*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ss_isoc_get_packet_num (struct usb_device*,int) ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_maxp_mult (struct usb_endpoint_descriptor*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
test_queue(struct usbtest_dev *dev, struct usbtest_param_32 *param,
  int pipe, struct usb_endpoint_descriptor *desc, unsigned offset)
{
 struct transfer_context context;
 struct usb_device *udev;
 unsigned i;
 unsigned long packets = 0;
 int status = 0;
 struct urb *urbs[MAX_SGLEN];

 if (!param->sglen || param->iterations > UINT_MAX / param->sglen)
  return -EINVAL;

 if (param->sglen > MAX_SGLEN)
  return -EINVAL;

 memset(&context, 0, sizeof(context));
 context.count = param->iterations * param->sglen;
 context.dev = dev;
 context.is_iso = !!desc;
 init_completion(&context.done);
 spin_lock_init(&context.lock);

 udev = testdev_to_usbdev(dev);

 for (i = 0; i < param->sglen; i++) {
  if (context.is_iso)
   urbs[i] = iso_alloc_urb(udev, pipe, desc,
     param->length, offset);
  else
   urbs[i] = complicated_alloc_urb(udev, pipe,
     param->length, 0);

  if (!urbs[i]) {
   status = -ENOMEM;
   goto fail;
  }
  packets += urbs[i]->number_of_packets;
  urbs[i]->context = &context;
 }
 packets *= param->iterations;

 if (context.is_iso) {
  int transaction_num;

  if (udev->speed >= USB_SPEED_SUPER)
   transaction_num = ss_isoc_get_packet_num(udev, pipe);
  else
   transaction_num = usb_endpoint_maxp_mult(desc);

  dev_info(&dev->intf->dev,
   "iso period %d %sframes, wMaxPacket %d, transactions: %d\n",
   1 << (desc->bInterval - 1),
   (udev->speed >= USB_SPEED_HIGH) ? "micro" : "",
   usb_endpoint_maxp(desc),
   transaction_num);

  dev_info(&dev->intf->dev,
   "total %lu msec (%lu packets)\n",
   (packets * (1 << (desc->bInterval - 1)))
    / ((udev->speed >= USB_SPEED_HIGH) ? 8 : 1),
   packets);
 }

 spin_lock_irq(&context.lock);
 for (i = 0; i < param->sglen; i++) {
  ++context.pending;
  status = usb_submit_urb(urbs[i], GFP_ATOMIC);
  if (status < 0) {
   ERROR(dev, "submit iso[%d], error %d\n", i, status);
   if (i == 0) {
    spin_unlock_irq(&context.lock);
    goto fail;
   }

   simple_free_urb(urbs[i]);
   urbs[i] = ((void*)0);
   context.pending--;
   context.submit_error = 1;
   break;
  }
 }
 spin_unlock_irq(&context.lock);

 wait_for_completion(&context.done);

 for (i = 0; i < param->sglen; i++) {
  if (urbs[i])
   simple_free_urb(urbs[i]);
 }





 if (status != 0)
  ;
 else if (context.submit_error)
  status = -EACCES;
 else if (context.errors >
   (context.is_iso ? context.packet_count / 10 : 0))
  status = -EIO;
 return status;

fail:
 for (i = 0; i < param->sglen; i++) {
  if (urbs[i])
   simple_free_urb(urbs[i]);
 }
 return status;
}
