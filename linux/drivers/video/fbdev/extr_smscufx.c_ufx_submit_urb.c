
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {size_t transfer_buffer_length; } ;
struct TYPE_2__ {size_t size; } ;
struct ufx_data {int lost_pixels; TYPE_1__ urbs; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int pr_err (char*,int) ;
 int ufx_urb_completion (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int ufx_submit_urb(struct ufx_data *dev, struct urb *urb, size_t len)
{
 int ret;

 BUG_ON(len > dev->urbs.size);

 urb->transfer_buffer_length = len;
 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret) {
  ufx_urb_completion(urb);
  atomic_set(&dev->lost_pixels, 1);
  pr_err("usb_submit_urb error %x\n", ret);
 }
 return ret;
}
