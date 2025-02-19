
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ENXIO ;
 scalar_t__ match_endpoint (struct usb_endpoint_descriptor*,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**) ;

int usb_find_common_endpoints_reverse(struct usb_host_interface *alt,
  struct usb_endpoint_descriptor **bulk_in,
  struct usb_endpoint_descriptor **bulk_out,
  struct usb_endpoint_descriptor **int_in,
  struct usb_endpoint_descriptor **int_out)
{
 struct usb_endpoint_descriptor *epd;
 int i;

 if (bulk_in)
  *bulk_in = ((void*)0);
 if (bulk_out)
  *bulk_out = ((void*)0);
 if (int_in)
  *int_in = ((void*)0);
 if (int_out)
  *int_out = ((void*)0);

 for (i = alt->desc.bNumEndpoints - 1; i >= 0; --i) {
  epd = &alt->endpoint[i].desc;

  if (match_endpoint(epd, bulk_in, bulk_out, int_in, int_out))
   return 0;
 }

 return -ENXIO;
}
