
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_3__ {int is_selfpowered; } ;
struct ast_vhub_dev {TYPE_2__* vhub; TYPE_1__ gadget; struct usb_gadget_driver* driver; } ;
struct TYPE_4__ {int lock; } ;


 int DDBG (struct ast_vhub_dev*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_dev* to_ast_dev (struct usb_gadget*) ;

__attribute__((used)) static int ast_vhub_udc_start(struct usb_gadget *gadget,
         struct usb_gadget_driver *driver)
{
 struct ast_vhub_dev *d = to_ast_dev(gadget);
 unsigned long flags;

 spin_lock_irqsave(&d->vhub->lock, flags);

 DDBG(d, "start\n");


 d->driver = driver;
 d->gadget.is_selfpowered = 1;

 spin_unlock_irqrestore(&d->vhub->lock, flags);

 return 0;
}
