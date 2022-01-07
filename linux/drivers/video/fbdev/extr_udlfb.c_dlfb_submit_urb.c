
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {size_t transfer_buffer_length; } ;
struct TYPE_3__ {size_t size; } ;
struct dlfb_data {TYPE_2__* udev; int lost_pixels; TYPE_1__ urbs; } ;
struct TYPE_4__ {int dev; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int dev_err (int *,char*,int) ;
 int dlfb_urb_completion (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int dlfb_submit_urb(struct dlfb_data *dlfb, struct urb *urb, size_t len)
{
 int ret;

 BUG_ON(len > dlfb->urbs.size);

 urb->transfer_buffer_length = len;
 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret) {
  dlfb_urb_completion(urb);
  atomic_set(&dlfb->lost_pixels, 1);
  dev_err(&dlfb->udev->dev, "submit urb error: %d\n", ret);
 }
 return ret;
}
