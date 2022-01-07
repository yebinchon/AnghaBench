
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQF_PROBE_SHARED ;
 int free_irq (int,void*) ;
 int legacy_empty_irq_handler ;
 int request_irq (int,int ,int ,char*,void*) ;

__attribute__((used)) static int legacy_find_free_irq(int *irq_table)
{
 while (*irq_table != -1) {
  if (!request_irq(*irq_table, legacy_empty_irq_handler,
                   IRQF_PROBE_SHARED, "Test IRQ",
                   (void *)irq_table)) {
   free_irq(*irq_table, (void *) irq_table);
   return *irq_table;
  }
  irq_table++;
 }
 return -1;
}
