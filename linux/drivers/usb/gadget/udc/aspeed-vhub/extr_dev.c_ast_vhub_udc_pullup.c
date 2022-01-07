
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct ast_vhub_dev {TYPE_1__* vhub; scalar_t__ enabled; int index; } ;
struct TYPE_2__ {int lock; } ;


 int DDBG (struct ast_vhub_dev*,char*,int) ;
 int ast_vhub_dev_disable (struct ast_vhub_dev*) ;
 int ast_vhub_dev_nuke (struct ast_vhub_dev*) ;
 int ast_vhub_device_connect (TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_dev* to_ast_dev (struct usb_gadget*) ;

__attribute__((used)) static int ast_vhub_udc_pullup(struct usb_gadget* gadget, int on)
{
 struct ast_vhub_dev *d = to_ast_dev(gadget);
 unsigned long flags;

 spin_lock_irqsave(&d->vhub->lock, flags);

 DDBG(d, "pullup(%d)\n", on);


 ast_vhub_device_connect(d->vhub, d->index, on);





 if (d->enabled) {
  ast_vhub_dev_nuke(d);
  ast_vhub_dev_disable(d);
 }

 spin_unlock_irqrestore(&d->vhub->lock, flags);

 return 0;
}
