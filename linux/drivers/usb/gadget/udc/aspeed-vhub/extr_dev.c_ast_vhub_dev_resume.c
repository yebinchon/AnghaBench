
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ast_vhub_dev {TYPE_2__* vhub; int gadget; TYPE_1__* driver; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int (* resume ) (int *) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

void ast_vhub_dev_resume(struct ast_vhub_dev *d)
{
 if (d->driver && d->driver->resume) {
  spin_unlock(&d->vhub->lock);
  d->driver->resume(&d->gadget);
  spin_lock(&d->vhub->lock);
 }
}
