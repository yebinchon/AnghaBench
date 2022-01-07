
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_configuration {TYPE_1__* cdev; } ;
struct TYPE_2__ {int gadget; } ;


 int gadget_is_altset_supported (int ) ;

__attribute__((used)) static inline bool can_support_obex(struct usb_configuration *c)
{





 if (!gadget_is_altset_supported(c->cdev->gadget))
  return 0;


 return 1;
}
