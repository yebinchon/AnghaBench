
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function_instance {TYPE_1__* fd; } ;
struct usb_function {struct usb_function_instance* fi; } ;
struct TYPE_2__ {struct usb_function* (* alloc_func ) (struct usb_function_instance*) ;} ;


 scalar_t__ IS_ERR (struct usb_function*) ;
 struct usb_function* stub1 (struct usb_function_instance*) ;

struct usb_function *usb_get_function(struct usb_function_instance *fi)
{
 struct usb_function *f;

 f = fi->fd->alloc_func(fi);
 if (IS_ERR(f))
  return f;
 f->fi = fi;
 return f;
}
