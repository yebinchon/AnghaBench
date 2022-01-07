
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_4__ {int speed; } ;
struct ast_vhub_dev {TYPE_1__* vhub; scalar_t__ enabled; TYPE_2__ gadget; int * driver; } ;
struct TYPE_3__ {int lock; } ;


 int DDBG (struct ast_vhub_dev*,char*) ;
 int USB_SPEED_UNKNOWN ;
 int ast_vhub_dev_disable (struct ast_vhub_dev*) ;
 int ast_vhub_dev_nuke (struct ast_vhub_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_dev* to_ast_dev (struct usb_gadget*) ;

__attribute__((used)) static int ast_vhub_udc_stop(struct usb_gadget *gadget)
{
 struct ast_vhub_dev *d = to_ast_dev(gadget);
 unsigned long flags;

 spin_lock_irqsave(&d->vhub->lock, flags);

 DDBG(d, "stop\n");

 d->driver = ((void*)0);
 d->gadget.speed = USB_SPEED_UNKNOWN;

 ast_vhub_dev_nuke(d);

 if (d->enabled)
  ast_vhub_dev_disable(d);

 spin_unlock_irqrestore(&d->vhub->lock, flags);

 return 0;
}
