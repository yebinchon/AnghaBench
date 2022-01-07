
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct gigaset_ops {int dummy; } ;
struct gigaset_driver {unsigned int minor; unsigned int minors; int list; TYPE_1__* cs; struct gigaset_ops const* ops; struct module* owner; scalar_t__ blocked; int lock; scalar_t__ have_tty; } ;
struct TYPE_2__ {unsigned int minor_index; int mutex; struct gigaset_ops const* ops; struct gigaset_driver* driver; scalar_t__ flags; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int driver_lock ;
 int drivers ;
 int gigaset_if_initdriver (struct gigaset_driver*,char const*,char const*) ;
 int kfree (struct gigaset_driver*) ;
 struct gigaset_driver* kmalloc (int,int ) ;
 TYPE_1__* kmalloc_array (unsigned int,int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct gigaset_driver *gigaset_initdriver(unsigned minor, unsigned minors,
       const char *procname,
       const char *devname,
       const struct gigaset_ops *ops,
       struct module *owner)
{
 struct gigaset_driver *drv;
 unsigned long flags;
 unsigned i;

 drv = kmalloc(sizeof *drv, GFP_KERNEL);
 if (!drv)
  return ((void*)0);

 drv->have_tty = 0;
 drv->minor = minor;
 drv->minors = minors;
 spin_lock_init(&drv->lock);
 drv->blocked = 0;
 drv->ops = ops;
 drv->owner = owner;
 INIT_LIST_HEAD(&drv->list);

 drv->cs = kmalloc_array(minors, sizeof(*drv->cs), GFP_KERNEL);
 if (!drv->cs)
  goto error;

 for (i = 0; i < minors; ++i) {
  drv->cs[i].flags = 0;
  drv->cs[i].driver = drv;
  drv->cs[i].ops = drv->ops;
  drv->cs[i].minor_index = i;
  mutex_init(&drv->cs[i].mutex);
 }

 gigaset_if_initdriver(drv, procname, devname);

 spin_lock_irqsave(&driver_lock, flags);
 list_add(&drv->list, &drivers);
 spin_unlock_irqrestore(&driver_lock, flags);

 return drv;

error:
 kfree(drv);
 return ((void*)0);
}
