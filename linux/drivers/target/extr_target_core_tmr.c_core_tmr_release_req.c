
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_tmr_req {int tmr_list; struct se_device* tmr_dev; } ;
struct se_device {int se_tmr_lock; } ;


 int kfree (struct se_tmr_req*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void core_tmr_release_req(struct se_tmr_req *tmr)
{
 struct se_device *dev = tmr->tmr_dev;
 unsigned long flags;

 if (dev) {
  spin_lock_irqsave(&dev->se_tmr_lock, flags);
  list_del_init(&tmr->tmr_list);
  spin_unlock_irqrestore(&dev->se_tmr_lock, flags);
 }

 kfree(tmr);
}
