
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_handle_int {unsigned int irq; scalar_t__ handle; } ;


 struct intc_handle_int* bsearch (struct intc_handle_int*,struct intc_handle_int*,unsigned int,int,int ) ;
 int intc_handle_int_cmp ;

__attribute__((used)) static struct intc_handle_int *intc_find_irq(struct intc_handle_int *hp,
          unsigned int nr_hp,
          unsigned int irq)
{
 struct intc_handle_int key;

 key.irq = irq;
 key.handle = 0;

 return bsearch(&key, hp, nr_hp, sizeof(*hp), intc_handle_int_cmp);
}
