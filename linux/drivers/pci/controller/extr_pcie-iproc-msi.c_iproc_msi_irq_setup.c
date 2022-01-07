
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iproc_pcie {int dev; } ;
struct iproc_msi {int nr_irqs; TYPE_1__* grps; scalar_t__ nr_cpus; struct iproc_pcie* pcie; } ;
typedef int cpumask_var_t ;
struct TYPE_2__ {int gic_irq; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ alloc_cpumask_var (int *,int ) ;
 int cpumask_clear (int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 int dev_err (int ,char*,...) ;
 int free_cpumask_var (int ) ;
 int iproc_msi_handler ;
 int iproc_msi_irq_free (struct iproc_msi*,unsigned int) ;
 int irq_set_affinity (int ,int ) ;
 int irq_set_chained_handler_and_data (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int iproc_msi_irq_setup(struct iproc_msi *msi, unsigned int cpu)
{
 int i, ret;
 cpumask_var_t mask;
 struct iproc_pcie *pcie = msi->pcie;

 for (i = cpu; i < msi->nr_irqs; i += msi->nr_cpus) {
  irq_set_chained_handler_and_data(msi->grps[i].gic_irq,
       iproc_msi_handler,
       &msi->grps[i]);

  if (alloc_cpumask_var(&mask, GFP_KERNEL)) {
   cpumask_clear(mask);
   cpumask_set_cpu(cpu, mask);
   ret = irq_set_affinity(msi->grps[i].gic_irq, mask);
   if (ret)
    dev_err(pcie->dev,
     "failed to set affinity for IRQ%d\n",
     msi->grps[i].gic_irq);
   free_cpumask_var(mask);
  } else {
   dev_err(pcie->dev, "failed to alloc CPU mask\n");
   ret = -EINVAL;
  }

  if (ret) {

   iproc_msi_irq_free(msi, cpu);
   return ret;
  }
 }

 return 0;
}
