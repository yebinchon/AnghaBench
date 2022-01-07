
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ serial; scalar_t__ product; scalar_t__ manufacturer; } ;


 char* format_string_manufacturer ;
 char* format_string_product ;
 char* format_string_serialnumber ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static char *usb_dump_device_strings(char *start, char *end,
         struct usb_device *dev)
{
 if (start > end)
  return start;
 if (dev->manufacturer)
  start += sprintf(start, format_string_manufacturer,
     dev->manufacturer);
 if (start > end)
  goto out;
 if (dev->product)
  start += sprintf(start, format_string_product, dev->product);
 if (start > end)
  goto out;





 out:
 return start;
}
