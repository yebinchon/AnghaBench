
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {scalar_t__ type; } ;


 int ENOMEM ;
 scalar_t__ IRQT_EVTCHN ;
 int WARN_ON (int) ;
 int __unbind_from_irq (int) ;
 int bind_evtchn_to_cpu (unsigned int,int ) ;
 int get_evtchn_to_irq (unsigned int) ;
 int handle_edge_irq ;
 struct irq_info* info_for_irq (int) ;
 int irq_mapping_update_lock ;
 int irq_set_chip_and_handler_name (int,int *,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xen_allocate_irq_dynamic () ;
 int xen_dynamic_chip ;
 unsigned int xen_evtchn_max_channels () ;
 int xen_irq_info_evtchn_setup (int,unsigned int) ;

int bind_evtchn_to_irq(unsigned int evtchn)
{
 int irq;
 int ret;

 if (evtchn >= xen_evtchn_max_channels())
  return -ENOMEM;

 mutex_lock(&irq_mapping_update_lock);

 irq = get_evtchn_to_irq(evtchn);

 if (irq == -1) {
  irq = xen_allocate_irq_dynamic();
  if (irq < 0)
   goto out;

  irq_set_chip_and_handler_name(irq, &xen_dynamic_chip,
           handle_edge_irq, "event");

  ret = xen_irq_info_evtchn_setup(irq, evtchn);
  if (ret < 0) {
   __unbind_from_irq(irq);
   irq = ret;
   goto out;
  }

  bind_evtchn_to_cpu(evtchn, 0);
 } else {
  struct irq_info *info = info_for_irq(irq);
  WARN_ON(info == ((void*)0) || info->type != IRQT_EVTCHN);
 }

out:
 mutex_unlock(&irq_mapping_update_lock);

 return irq;
}
