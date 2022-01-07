
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct ast_vhub_dev {TYPE_1__* vhub; int wakeup_en; } ;
struct TYPE_2__ {int lock; } ;


 int DDBG (struct ast_vhub_dev*,char*) ;
 int EINVAL ;
 int ast_vhub_hub_wake_all (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_dev* to_ast_dev (struct usb_gadget*) ;

__attribute__((used)) static int ast_vhub_udc_wakeup(struct usb_gadget* gadget)
{
 struct ast_vhub_dev *d = to_ast_dev(gadget);
 unsigned long flags;
 int rc = -EINVAL;

 spin_lock_irqsave(&d->vhub->lock, flags);
 if (!d->wakeup_en)
  goto err;

 DDBG(d, "Device initiated wakeup\n");


 ast_vhub_hub_wake_all(d->vhub);
 rc = 0;
 err:
 spin_unlock_irqrestore(&d->vhub->lock, flags);
 return rc;
}
