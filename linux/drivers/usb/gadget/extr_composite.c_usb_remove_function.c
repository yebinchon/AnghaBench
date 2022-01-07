
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {scalar_t__ bind_deactivated; int (* unbind ) (struct usb_configuration*,struct usb_function*) ;int list; int endpoints; int (* disable ) (struct usb_function*) ;} ;
struct usb_configuration {int dummy; } ;


 int bitmap_zero (int ,int) ;
 int list_del (int *) ;
 int stub1 (struct usb_function*) ;
 int stub2 (struct usb_configuration*,struct usb_function*) ;
 int usb_function_activate (struct usb_function*) ;

void usb_remove_function(struct usb_configuration *c, struct usb_function *f)
{
 if (f->disable)
  f->disable(f);

 bitmap_zero(f->endpoints, 32);
 list_del(&f->list);
 if (f->unbind)
  f->unbind(c, f);

 if (f->bind_deactivated)
  usb_function_activate(f);
}
