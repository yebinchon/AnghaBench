
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gasket_interrupt_data {int num_interrupts; int msix_configured; int num_configured; TYPE_2__* msix_entries; TYPE_1__* pci_dev; int name; int ** eventfd_ctxs; } ;
struct TYPE_5__ {int entry; scalar_t__ vector; } ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSIX_RETRY_COUNT ;
 int dev_err (int *,char*,int,scalar_t__,int) ;
 int gasket_msix_interrupt_handler ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int pci_enable_msix_exact (TYPE_1__*,TYPE_2__*,int) ;
 int request_irq (scalar_t__,int ,int ,int ,struct gasket_interrupt_data*) ;

__attribute__((used)) static int
gasket_interrupt_msix_init(struct gasket_interrupt_data *interrupt_data)
{
 int ret = 1;
 int i;

 interrupt_data->msix_entries =
  kcalloc(interrupt_data->num_interrupts,
   sizeof(*interrupt_data->msix_entries), GFP_KERNEL);
 if (!interrupt_data->msix_entries)
  return -ENOMEM;

 for (i = 0; i < interrupt_data->num_interrupts; i++) {
  interrupt_data->msix_entries[i].entry = i;
  interrupt_data->msix_entries[i].vector = 0;
  interrupt_data->eventfd_ctxs[i] = ((void*)0);
 }


 for (i = 0; i < MSIX_RETRY_COUNT && ret > 0; i++)
  ret = pci_enable_msix_exact(interrupt_data->pci_dev,
         interrupt_data->msix_entries,
         interrupt_data->num_interrupts);

 if (ret)
  return ret > 0 ? -EBUSY : ret;
 interrupt_data->msix_configured = 1;

 for (i = 0; i < interrupt_data->num_interrupts; i++) {
  ret = request_irq(interrupt_data->msix_entries[i].vector,
      gasket_msix_interrupt_handler, 0,
      interrupt_data->name, interrupt_data);

  if (ret) {
   dev_err(&interrupt_data->pci_dev->dev,
    "Cannot get IRQ for interrupt %d, vector %d; "
    "%d\n",
    i, interrupt_data->msix_entries[i].vector, ret);
   return ret;
  }

  interrupt_data->num_configured++;
 }

 return 0;
}
