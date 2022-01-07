
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;
struct wusbhc {TYPE_2__ usb_hcd; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int sysfs_create_group (int ,int *) ;
 int wusbhc_attr_group ;
 int wusbhc_kobj (struct wusbhc*) ;

int wusbhc_b_create(struct wusbhc *wusbhc)
{
 int result = 0;
 struct device *dev = wusbhc->usb_hcd.self.controller;

 result = sysfs_create_group(wusbhc_kobj(wusbhc), &wusbhc_attr_group);
 if (result < 0) {
  dev_err(dev, "Cannot register WUSBHC attributes: %d\n",
   result);
  goto error_create_attr_group;
 }

 return 0;
error_create_attr_group:
 return result;
}
