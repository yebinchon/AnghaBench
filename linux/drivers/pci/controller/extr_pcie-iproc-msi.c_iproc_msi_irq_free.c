
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iproc_msi {int nr_irqs; TYPE_1__* grps; scalar_t__ nr_cpus; } ;
struct TYPE_2__ {int gic_irq; } ;


 int irq_set_chained_handler_and_data (int ,int *,int *) ;

__attribute__((used)) static void iproc_msi_irq_free(struct iproc_msi *msi, unsigned int cpu)
{
 int i;

 for (i = cpu; i < msi->nr_irqs; i += msi->nr_cpus) {
  irq_set_chained_handler_and_data(msi->grps[i].gic_irq,
       ((void*)0), ((void*)0));
 }
}
