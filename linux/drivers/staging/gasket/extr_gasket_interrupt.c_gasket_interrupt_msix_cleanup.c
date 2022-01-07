
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_interrupt_data {int num_configured; TYPE_1__* msix_entries; scalar_t__ msix_configured; int pci_dev; } ;
struct TYPE_2__ {int vector; } ;


 int free_irq (int ,struct gasket_interrupt_data*) ;
 int kfree (TYPE_1__*) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void
gasket_interrupt_msix_cleanup(struct gasket_interrupt_data *interrupt_data)
{
 int i;

 for (i = 0; i < interrupt_data->num_configured; i++)
  free_irq(interrupt_data->msix_entries[i].vector,
    interrupt_data);
 interrupt_data->num_configured = 0;

 if (interrupt_data->msix_configured)
  pci_disable_msix(interrupt_data->pci_dev);
 interrupt_data->msix_configured = 0;
 kfree(interrupt_data->msix_entries);
}
