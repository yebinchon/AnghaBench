
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int dummy; } ;




 int usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor*) ;

__attribute__((used)) static bool match_endpoint(struct usb_endpoint_descriptor *epd,
  struct usb_endpoint_descriptor **bulk_in,
  struct usb_endpoint_descriptor **bulk_out,
  struct usb_endpoint_descriptor **int_in,
  struct usb_endpoint_descriptor **int_out)
{
 switch (usb_endpoint_type(epd)) {
 case 129:
  if (usb_endpoint_dir_in(epd)) {
   if (bulk_in && !*bulk_in) {
    *bulk_in = epd;
    break;
   }
  } else {
   if (bulk_out && !*bulk_out) {
    *bulk_out = epd;
    break;
   }
  }

  return 0;
 case 128:
  if (usb_endpoint_dir_in(epd)) {
   if (int_in && !*int_in) {
    *int_in = epd;
    break;
   }
  } else {
   if (int_out && !*int_out) {
    *int_out = epd;
    break;
   }
  }

  return 0;
 default:
  return 0;
 }

 return (!bulk_in || *bulk_in) && (!bulk_out || *bulk_out) &&
   (!int_in || *int_in) && (!int_out || *int_out);
}
