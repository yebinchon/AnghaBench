
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_msi_group {int gic_irq; } ;
struct xgene_msi {struct xgene_msi_group* msi_groups; scalar_t__ num_cpus; } ;


 int NR_HW_IRQS ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;
 struct xgene_msi xgene_msi_ctrl ;

__attribute__((used)) static int xgene_msi_hwirq_free(unsigned int cpu)
{
 struct xgene_msi *msi = &xgene_msi_ctrl;
 struct xgene_msi_group *msi_group;
 int i;

 for (i = cpu; i < NR_HW_IRQS; i += msi->num_cpus) {
  msi_group = &msi->msi_groups[i];
  if (!msi_group->gic_irq)
   continue;

  irq_set_chained_handler_and_data(msi_group->gic_irq, ((void*)0),
       ((void*)0));
 }
 return 0;
}
