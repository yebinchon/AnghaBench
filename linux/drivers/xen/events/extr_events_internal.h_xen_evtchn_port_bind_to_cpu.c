
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_info {int dummy; } ;
struct TYPE_2__ {int (* bind_to_cpu ) (struct irq_info*,unsigned int) ;} ;


 TYPE_1__* evtchn_ops ;
 int stub1 (struct irq_info*,unsigned int) ;

__attribute__((used)) static inline void xen_evtchn_port_bind_to_cpu(struct irq_info *info,
            unsigned cpu)
{
 evtchn_ops->bind_to_cpu(info, cpu);
}
