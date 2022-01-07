
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ refcnt; } ;


 int EINVAL ;
 int ENOENT ;
 int get_evtchn_to_irq (unsigned int) ;
 struct irq_info* irq_get_handler_data (int) ;
 int irq_mapping_update_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int xen_evtchn_max_channels () ;

int evtchn_get(unsigned int evtchn)
{
 int irq;
 struct irq_info *info;
 int err = -ENOENT;

 if (evtchn >= xen_evtchn_max_channels())
  return -EINVAL;

 mutex_lock(&irq_mapping_update_lock);

 irq = get_evtchn_to_irq(evtchn);
 if (irq == -1)
  goto done;

 info = irq_get_handler_data(irq);

 if (!info)
  goto done;

 err = -EINVAL;
 if (info->refcnt <= 0)
  goto done;

 info->refcnt++;
 err = 0;
 done:
 mutex_unlock(&irq_mapping_update_lock);

 return err;
}
