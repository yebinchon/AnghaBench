
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_irq {int irq; int txn_data; int txn_addr; } ;


 scalar_t__ CPU_IRQ_BASE ;
 int printk (char*,int) ;
 int txn_alloc_addr (int) ;
 int txn_alloc_data (int) ;
 int txn_claim_irq (int) ;

int gsc_claim_irq(struct gsc_irq *i, int irq)
{
 int c = irq;

 irq += CPU_IRQ_BASE;

 irq = txn_claim_irq(irq);
 if (irq < 0) {
  printk("cannot claim irq %d\n", c);
  return irq;
 }

 i->txn_addr = txn_alloc_addr(irq);
 i->txn_data = txn_alloc_data(irq);
 i->irq = irq;

 return irq;
}
