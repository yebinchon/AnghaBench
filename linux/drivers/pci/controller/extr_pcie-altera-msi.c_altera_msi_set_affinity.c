
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int altera_msi_set_affinity(struct irq_data *irq_data,
       const struct cpumask *mask, bool force)
{
  return -EINVAL;
}
