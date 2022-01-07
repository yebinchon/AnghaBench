
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_desc_int {unsigned int nr_reg; unsigned long* reg; } ;


 int BUG () ;
 unsigned long intc_phys_to_virt (struct intc_desc_int*,unsigned long) ;

unsigned int intc_get_reg(struct intc_desc_int *d, unsigned long address)
{
 unsigned int k;

 address = intc_phys_to_virt(d, address);

 for (k = 0; k < d->nr_reg; k++) {
  if (d->reg[k] == address)
   return k;
 }

 BUG();
 return 0;
}
