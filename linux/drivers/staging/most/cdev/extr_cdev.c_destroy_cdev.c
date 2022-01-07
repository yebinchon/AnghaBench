
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comp_channel {int list; int cdev; int devno; } ;
struct TYPE_2__ {int class; } ;


 int cdev_del (int *) ;
 int ch_list_lock ;
 TYPE_1__ comp ;
 int device_destroy (int ,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void destroy_cdev(struct comp_channel *c)
{
 unsigned long flags;

 device_destroy(comp.class, c->devno);
 cdev_del(&c->cdev);
 spin_lock_irqsave(&ch_list_lock, flags);
 list_del(&c->list);
 spin_unlock_irqrestore(&ch_list_lock, flags);
}
