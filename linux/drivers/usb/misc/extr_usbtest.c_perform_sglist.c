
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int dummy; } ;
struct usb_sg_request {int status; } ;
struct usb_device {scalar_t__ speed; } ;
struct sg_timeout {int timer; struct usb_sg_request* req; } ;
struct scatterlist {int dummy; } ;


 int ERROR (struct usbtest_dev*,char*,unsigned int,int) ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int INTERRUPT_RATE ;
 int SIMPLE_IO_TIMEOUT ;
 scalar_t__ USB_SPEED_HIGH ;
 int del_timer_sync (int *) ;
 int destroy_timer_on_stack (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int sg_timeout ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int timer_setup_on_stack (int *,int ,int ) ;
 int usb_sg_init (struct usb_sg_request*,struct usb_device*,int,int,struct scatterlist*,int,int ,int ) ;
 int usb_sg_wait (struct usb_sg_request*) ;

__attribute__((used)) static int perform_sglist(
 struct usbtest_dev *tdev,
 unsigned iterations,
 int pipe,
 struct usb_sg_request *req,
 struct scatterlist *sg,
 int nents
)
{
 struct usb_device *udev = testdev_to_usbdev(tdev);
 int retval = 0;
 struct sg_timeout timeout = {
  .req = req,
 };

 timer_setup_on_stack(&timeout.timer, sg_timeout, 0);

 while (retval == 0 && iterations-- > 0) {
  retval = usb_sg_init(req, udev, pipe,
    (udev->speed == USB_SPEED_HIGH)
     ? (INTERRUPT_RATE << 3)
     : INTERRUPT_RATE,
    sg, nents, 0, GFP_KERNEL);

  if (retval)
   break;
  mod_timer(&timeout.timer, jiffies +
    msecs_to_jiffies(SIMPLE_IO_TIMEOUT));
  usb_sg_wait(req);
  if (!del_timer_sync(&timeout.timer))
   retval = -ETIMEDOUT;
  else
   retval = req->status;
  destroy_timer_on_stack(&timeout.timer);




 }




 if (retval)
  ERROR(tdev, "perform_sglist failed, "
    "iterations left %d, status %d\n",
    iterations, retval);
 return retval;
}
