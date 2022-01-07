
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_irq {int irq; int txn_data; int txn_addr; } ;


 int GSC_EIM_WIDTH ;
 int printk (char*) ;
 int txn_alloc_addr (int) ;
 int txn_alloc_data (int) ;
 int txn_alloc_irq (int ) ;

int gsc_alloc_irq(struct gsc_irq *i)
{
 int irq = txn_alloc_irq(GSC_EIM_WIDTH);
 if (irq < 0) {
  printk("cannot get irq\n");
  return irq;
 }

 i->txn_addr = txn_alloc_addr(irq);
 i->txn_data = txn_alloc_data(irq);
 i->irq = irq;

 return irq;
}
