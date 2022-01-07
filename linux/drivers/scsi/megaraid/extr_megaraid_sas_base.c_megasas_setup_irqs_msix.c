
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int dev; } ;
struct megasas_instance {int msix_vectors; int msix_load_balance; struct pci_dev* pdev; TYPE_2__* irq_context; TYPE_1__* instancet; } ;
struct TYPE_5__ {int MSIxIndex; struct megasas_instance* instance; } ;
struct TYPE_4__ {int service_isr; } ;


 int dev_err (int *,char*,int) ;
 int free_irq (int ,TYPE_2__*) ;
 int megasas_setup_irqs_ioapic (struct megasas_instance*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 scalar_t__ request_irq (int ,int ,int ,char*,TYPE_2__*) ;

__attribute__((used)) static int
megasas_setup_irqs_msix(struct megasas_instance *instance, u8 is_probe)
{
 int i, j;
 struct pci_dev *pdev;

 pdev = instance->pdev;


 for (i = 0; i < instance->msix_vectors; i++) {
  instance->irq_context[i].instance = instance;
  instance->irq_context[i].MSIxIndex = i;
  if (request_irq(pci_irq_vector(pdev, i),
   instance->instancet->service_isr, 0, "megasas",
   &instance->irq_context[i])) {
   dev_err(&instance->pdev->dev,
    "Failed to register IRQ for vector %d.\n", i);
   for (j = 0; j < i; j++)
    free_irq(pci_irq_vector(pdev, j),
      &instance->irq_context[j]);

   instance->msix_vectors = 0;
   instance->msix_load_balance = 0;
   if (is_probe) {
    pci_free_irq_vectors(instance->pdev);
    return megasas_setup_irqs_ioapic(instance);
   } else {
    return -1;
   }
  }
 }

 return 0;
}
