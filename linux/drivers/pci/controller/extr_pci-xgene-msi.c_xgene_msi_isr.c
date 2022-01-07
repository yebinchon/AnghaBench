
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_msi_group {int msi_grp; struct xgene_msi* msi; } ;
struct xgene_msi {int inner_domain; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int IRQS_PER_IDX ;
 int NR_HW_IRQS ;
 int WARN_ON (int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int ffs (int) ;
 int generic_handle_irq (unsigned int) ;
 int hwirq_to_canonical_hwirq (int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct xgene_msi_group* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_find_mapping (int ,int) ;
 int xgene_msi_int_read (struct xgene_msi*,int) ;
 int xgene_msi_ir_read (struct xgene_msi*,int,int) ;

__attribute__((used)) static void xgene_msi_isr(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct xgene_msi_group *msi_groups;
 struct xgene_msi *xgene_msi;
 unsigned int virq;
 int msir_index, msir_val, hw_irq;
 u32 intr_index, grp_select, msi_grp;

 chained_irq_enter(chip, desc);

 msi_groups = irq_desc_get_handler_data(desc);
 xgene_msi = msi_groups->msi;
 msi_grp = msi_groups->msi_grp;






 grp_select = xgene_msi_int_read(xgene_msi, msi_grp);
 while (grp_select) {
  msir_index = ffs(grp_select) - 1;





  msir_val = xgene_msi_ir_read(xgene_msi, msi_grp, msir_index);
  while (msir_val) {
   intr_index = ffs(msir_val) - 1;





   hw_irq = (((msir_index * IRQS_PER_IDX) + intr_index) *
     NR_HW_IRQS) + msi_grp;





   hw_irq = hwirq_to_canonical_hwirq(hw_irq);
   virq = irq_find_mapping(xgene_msi->inner_domain, hw_irq);
   WARN_ON(!virq);
   if (virq != 0)
    generic_handle_irq(virq);
   msir_val &= ~(1 << intr_index);
  }
  grp_select &= ~(1 << msir_index);

  if (!grp_select) {





   grp_select = xgene_msi_int_read(xgene_msi, msi_grp);
  }
 }

 chained_irq_exit(chip, desc);
}
