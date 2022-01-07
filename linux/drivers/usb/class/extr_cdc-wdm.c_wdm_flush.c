
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdm_device {scalar_t__ werr; TYPE_1__* intf; int flags; int wait; } ;
struct file {struct wdm_device* private_data; } ;
typedef int fl_owner_t ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int WDM_DISCONNECTING ;
 int WDM_IN_USE ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_translate_errors (scalar_t__) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int wdm_flush(struct file *file, fl_owner_t id)
{
 struct wdm_device *desc = file->private_data;

 wait_event(desc->wait,






   !test_bit(WDM_IN_USE, &desc->flags) ||
   test_bit(WDM_DISCONNECTING, &desc->flags));


 if (test_bit(WDM_DISCONNECTING, &desc->flags))
  return -ENODEV;
 if (desc->werr < 0)
  dev_err(&desc->intf->dev, "Error in flush path: %d\n",
   desc->werr);

 return usb_translate_errors(desc->werr);
}
