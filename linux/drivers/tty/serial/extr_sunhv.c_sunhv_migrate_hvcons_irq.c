
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;


 int cpumask_of (int) ;
 int irq_force_affinity (int ,int ) ;
 TYPE_1__* sunhv_port ;

void sunhv_migrate_hvcons_irq(int cpu)
{

 irq_force_affinity(sunhv_port->irq, cpumask_of(cpu));
}
