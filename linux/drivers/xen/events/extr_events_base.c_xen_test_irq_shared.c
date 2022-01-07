
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct physdev_irq_status_query {int flags; int irq; } ;
struct TYPE_3__ {int pirq; } ;
struct TYPE_4__ {TYPE_1__ pirq; } ;
struct irq_info {TYPE_2__ u; } ;


 int ENOENT ;
 scalar_t__ HYPERVISOR_physdev_op (int ,struct physdev_irq_status_query*) ;
 int PHYSDEVOP_irq_status_query ;
 scalar_t__ WARN_ON (int) ;
 int XENIRQSTAT_shared ;
 struct irq_info* info_for_irq (int) ;

int xen_test_irq_shared(int irq)
{
 struct irq_info *info = info_for_irq(irq);
 struct physdev_irq_status_query irq_status;

 if (WARN_ON(!info))
  return -ENOENT;

 irq_status.irq = info->u.pirq.pirq;

 if (HYPERVISOR_physdev_op(PHYSDEVOP_irq_status_query, &irq_status))
  return 0;
 return !(irq_status.flags & XENIRQSTAT_shared);
}
