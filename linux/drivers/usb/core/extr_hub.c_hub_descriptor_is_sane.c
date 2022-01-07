
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bInterfaceSubClass; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {int desc; } ;


 int usb_endpoint_is_int_in (int *) ;

__attribute__((used)) static bool hub_descriptor_is_sane(struct usb_host_interface *desc)
{


 if (desc->desc.bInterfaceSubClass != 0 &&
     desc->desc.bInterfaceSubClass != 1)
  return 0;


 if (desc->desc.bNumEndpoints != 1)
  return 0;


 if (!usb_endpoint_is_int_in(&desc->endpoint[0].desc))
  return 0;

        return 1;
}
