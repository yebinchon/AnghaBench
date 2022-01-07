
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdm_device {TYPE_1__* intf; int validity; scalar_t__ count; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_NOIO ;
 int dev_err (int *,char*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int recover_from_urb_loss(struct wdm_device *desc)
{
 int rv = 0;

 if (desc->count) {
  rv = usb_submit_urb(desc->validity, GFP_NOIO);
  if (rv < 0)
   dev_err(&desc->intf->dev,
    "Error resume submitting int urb - %d\n", rv);
 }
 return rv;
}
