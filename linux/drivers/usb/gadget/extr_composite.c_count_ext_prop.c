
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_os_desc {int ext_prop_count; scalar_t__ ext_compat_id; } ;
struct usb_function {int os_desc_n; TYPE_1__* os_desc_table; } ;
struct usb_configuration {struct usb_function** interface; } ;
struct TYPE_2__ {int if_id; struct usb_os_desc* os_desc; } ;



__attribute__((used)) static int count_ext_prop(struct usb_configuration *c, int interface)
{
 struct usb_function *f;
 int j;

 f = c->interface[interface];
 for (j = 0; j < f->os_desc_n; ++j) {
  struct usb_os_desc *d;

  if (interface != f->os_desc_table[j].if_id)
   continue;
  d = f->os_desc_table[j].os_desc;
  if (d && d->ext_compat_id)
   return d->ext_prop_count;
 }
 return 0;
}
