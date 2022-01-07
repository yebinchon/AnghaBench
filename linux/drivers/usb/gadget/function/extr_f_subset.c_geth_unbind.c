
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 TYPE_1__* geth_string_defs ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void geth_unbind(struct usb_configuration *c, struct usb_function *f)
{
 geth_string_defs[0].id = 0;
 usb_free_all_descriptors(f);
}
