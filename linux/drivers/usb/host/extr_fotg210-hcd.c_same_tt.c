
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {scalar_t__ ttport; TYPE_1__* tt; } ;
struct TYPE_2__ {scalar_t__ multi; } ;



__attribute__((used)) static int same_tt(struct usb_device *dev1, struct usb_device *dev2)
{
 if (!dev1->tt || !dev2->tt)
  return 0;
 if (dev1->tt != dev2->tt)
  return 0;
 if (dev1->tt->multi)
  return dev1->ttport == dev2->ttport;
 else
  return 1;
}
