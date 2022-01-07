
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int (* free_func ) (struct usb_function*) ;} ;


 int stub1 (struct usb_function*) ;

void usb_put_function(struct usb_function *f)
{
 if (!f)
  return;

 f->free_func(f);
}
