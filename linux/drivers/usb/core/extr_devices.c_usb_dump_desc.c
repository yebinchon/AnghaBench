
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bNumConfigurations; } ;
struct usb_device {scalar_t__ config; scalar_t__ actconfig; int speed; TYPE_1__ descriptor; } ;


 char* usb_dump_config (int ,char*,char*,scalar_t__,int) ;
 char* usb_dump_device_descriptor (char*,char*,TYPE_1__*) ;
 char* usb_dump_device_strings (char*,char*,struct usb_device*) ;

__attribute__((used)) static char *usb_dump_desc(char *start, char *end, struct usb_device *dev)
{
 int i;

 if (start > end)
  return start;

 start = usb_dump_device_descriptor(start, end, &dev->descriptor);

 if (start > end)
  return start;

 start = usb_dump_device_strings(start, end, dev);

 for (i = 0; i < dev->descriptor.bNumConfigurations; i++) {
  if (start > end)
   return start;
  start = usb_dump_config(dev->speed,
    start, end, dev->config + i,

    (dev->config + i) == dev->actconfig);
 }
 return start;
}
