
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {unsigned int bInterval; int bmAttributes; int bEndpointAddress; } ;






 int USB_SPEED_HIGH ;
 int USB_SPEED_SUPER ;
 char* format_endpt ;
 int sprintf (char*,char*,int ,char,int ,char*,unsigned int,unsigned int,char) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;
 unsigned int usb_endpoint_maxp (struct usb_endpoint_descriptor const*) ;
 unsigned int usb_endpoint_maxp_mult (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor const*) ;

__attribute__((used)) static char *usb_dump_endpoint_descriptor(int speed, char *start, char *end,
    const struct usb_endpoint_descriptor *desc)
{
 char dir, unit, *type;
 unsigned interval, bandwidth = 1;

 if (start > end)
  return start;

 dir = usb_endpoint_dir_in(desc) ? 'I' : 'O';

 if (speed == USB_SPEED_HIGH)
  bandwidth = usb_endpoint_maxp_mult(desc);


 switch (usb_endpoint_type(desc)) {
 case 130:
  type = "Ctrl";
  if (speed == USB_SPEED_HIGH)
   interval = desc->bInterval;
  else
   interval = 0;
  dir = 'B';
  break;
 case 128:
  type = "Isoc";
  interval = 1 << (desc->bInterval - 1);
  break;
 case 131:
  type = "Bulk";
  if (speed == USB_SPEED_HIGH && dir == 'O')
   interval = desc->bInterval;
  else
   interval = 0;
  break;
 case 129:
  type = "Int.";
  if (speed == USB_SPEED_HIGH || speed >= USB_SPEED_SUPER)
   interval = 1 << (desc->bInterval - 1);
  else
   interval = desc->bInterval;
  break;
 default:
  return start;
 }
 interval *= (speed == USB_SPEED_HIGH ||
       speed >= USB_SPEED_SUPER) ? 125 : 1000;
 if (interval % 1000)
  unit = 'u';
 else {
  unit = 'm';
  interval /= 1000;
 }

 start += sprintf(start, format_endpt, desc->bEndpointAddress, dir,
    desc->bmAttributes, type,
    usb_endpoint_maxp(desc) *
    bandwidth,
    interval, unit);
 return start;
}
