
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function_instance {int (* free_func_inst ) (struct usb_function_instance*) ;TYPE_1__* fd; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* mod; } ;


 int module_put (struct module*) ;
 int stub1 (struct usb_function_instance*) ;

void usb_put_function_instance(struct usb_function_instance *fi)
{
 struct module *mod;

 if (!fi)
  return;

 mod = fi->fd->mod;
 fi->free_func_inst(fi);
 module_put(mod);
}
