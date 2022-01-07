
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_udc {int driver; TYPE_2__* gadget; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* udc_start ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static inline int usb_gadget_udc_start(struct usb_udc *udc)
{
 return udc->gadget->ops->udc_start(udc->gadget, udc->driver);
}
