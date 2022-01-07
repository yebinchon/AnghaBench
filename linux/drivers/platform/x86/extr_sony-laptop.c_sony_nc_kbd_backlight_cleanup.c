
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {unsigned int handle; int timeout_attr; scalar_t__ has_timeout; int mode_attr; } ;


 int device_remove_file (int *,int *) ;
 TYPE_1__* kbdbl_ctl ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void sony_nc_kbd_backlight_cleanup(struct platform_device *pd,
  unsigned int handle)
{
 if (kbdbl_ctl && handle == kbdbl_ctl->handle) {
  device_remove_file(&pd->dev, &kbdbl_ctl->mode_attr);
  if (kbdbl_ctl->has_timeout)
   device_remove_file(&pd->dev, &kbdbl_ctl->timeout_attr);
  kfree(kbdbl_ctl);
  kbdbl_ctl = ((void*)0);
 }
}
