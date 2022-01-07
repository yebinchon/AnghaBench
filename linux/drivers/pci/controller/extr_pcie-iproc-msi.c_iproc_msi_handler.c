
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct iproc_msi_grp {int eq; struct iproc_msi* msi; } ;
struct iproc_msi {int inner_domain; } ;


 int EQ_LEN ;
 int IPROC_MSI_EQ_HEAD ;
 int IPROC_MSI_EQ_MASK ;
 int IPROC_MSI_EQ_TAIL ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 unsigned long decode_msi_hwirq (struct iproc_msi*,int,int) ;
 int generic_handle_irq (int) ;
 int iproc_msi_read_reg (struct iproc_msi*,int ,int) ;
 int iproc_msi_write_reg (struct iproc_msi*,int ,int,int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct iproc_msi_grp* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,unsigned long) ;

__attribute__((used)) static void iproc_msi_handler(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct iproc_msi_grp *grp;
 struct iproc_msi *msi;
 u32 eq, head, tail, nr_events;
 unsigned long hwirq;
 int virq;

 chained_irq_enter(chip, desc);

 grp = irq_desc_get_handler_data(desc);
 msi = grp->msi;
 eq = grp->eq;
 head = iproc_msi_read_reg(msi, IPROC_MSI_EQ_HEAD,
      eq) & IPROC_MSI_EQ_MASK;
 do {
  tail = iproc_msi_read_reg(msi, IPROC_MSI_EQ_TAIL,
       eq) & IPROC_MSI_EQ_MASK;





  nr_events = (tail < head) ?
   (EQ_LEN - (head - tail)) : (tail - head);
  if (!nr_events)
   break;


  while (nr_events--) {
   hwirq = decode_msi_hwirq(msi, eq, head);
   virq = irq_find_mapping(msi->inner_domain, hwirq);
   generic_handle_irq(virq);

   head++;
   head %= EQ_LEN;
  }





  iproc_msi_write_reg(msi, IPROC_MSI_EQ_HEAD, eq, head);





 } while (1);

 chained_irq_exit(chip, desc);
}
