
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_info {int dummy; } ;
struct TYPE_2__ {int (* setup ) (struct irq_info*) ;} ;


 TYPE_1__* evtchn_ops ;
 int stub1 (struct irq_info*) ;

__attribute__((used)) static inline int xen_evtchn_port_setup(struct irq_info *info)
{
 if (evtchn_ops->setup)
  return evtchn_ops->setup(info);
 return 0;
}
