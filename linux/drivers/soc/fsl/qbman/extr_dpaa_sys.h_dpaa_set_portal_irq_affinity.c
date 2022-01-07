
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 int cpu_online (int) ;
 int cpu_online_mask ;
 int cpumask_any (int ) ;
 int cpumask_of (int) ;
 int dev_err (struct device*,char*,...) ;
 int irq_can_set_affinity (int) ;
 int irq_set_affinity (int,int ) ;

__attribute__((used)) static inline int dpaa_set_portal_irq_affinity(struct device *dev,
            int irq, int cpu)
{
 int ret = 0;

 if (!irq_can_set_affinity(irq)) {
  dev_err(dev, "unable to set IRQ affinity\n");
  return -EINVAL;
 }

 if (cpu == -1 || !cpu_online(cpu))
  cpu = cpumask_any(cpu_online_mask);

 ret = irq_set_affinity(irq, cpumask_of(cpu));
 if (ret)
  dev_err(dev, "irq_set_affinity() on CPU %d failed\n", cpu);

 return ret;
}
