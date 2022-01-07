
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp2p_entry {int dummy; } ;
struct irq_domain {struct smp2p_entry* host_data; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct smp2p_entry*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int smp2p_irq_chip ;

__attribute__((used)) static int smp2p_irq_map(struct irq_domain *d,
    unsigned int irq,
    irq_hw_number_t hw)
{
 struct smp2p_entry *entry = d->host_data;

 irq_set_chip_and_handler(irq, &smp2p_irq_chip, handle_level_irq);
 irq_set_chip_data(irq, entry);
 irq_set_nested_thread(irq, 1);
 irq_set_noprobe(irq);

 return 0;
}
