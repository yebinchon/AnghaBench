
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ast_vhub_dev {TYPE_1__* vhub; int driver; int gadget; int enabled; } ;
struct TYPE_2__ {int lock; } ;


 int DDBG (struct ast_vhub_dev*,char*) ;
 int ast_vhub_dev_disable (struct ast_vhub_dev*) ;
 int ast_vhub_dev_enable (struct ast_vhub_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_udc_reset (int *,int ) ;

void ast_vhub_dev_reset(struct ast_vhub_dev *d)
{

 if (!d->driver) {
  ast_vhub_dev_disable(d);
  return;
 }


 if (!d->enabled) {
  DDBG(d, "Reset of disabled device, enabling...\n");
  ast_vhub_dev_enable(d);
 } else {
  DDBG(d, "Reset of enabled device, resetting...\n");
  spin_unlock(&d->vhub->lock);
  usb_gadget_udc_reset(&d->gadget, d->driver);
  spin_lock(&d->vhub->lock);





  ast_vhub_dev_disable(d);
  ast_vhub_dev_enable(d);
 }
}
