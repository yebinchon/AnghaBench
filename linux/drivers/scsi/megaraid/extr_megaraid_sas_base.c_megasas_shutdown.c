
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct megasas_instance {int unload; int pdev; scalar_t__ msix_vectors; TYPE_1__* instancet; } ;
struct TYPE_2__ {int (* disable_intr ) (struct megasas_instance*) ;} ;


 int MR_DCMD_CTRL_SHUTDOWN ;
 int megasas_destroy_irqs (struct megasas_instance*) ;
 int megasas_flush_cache (struct megasas_instance*) ;
 int megasas_shutdown_controller (struct megasas_instance*,int ) ;
 scalar_t__ megasas_wait_for_adapter_operational (struct megasas_instance*) ;
 int pci_free_irq_vectors (int ) ;
 struct megasas_instance* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct megasas_instance*) ;

__attribute__((used)) static void megasas_shutdown(struct pci_dev *pdev)
{
 struct megasas_instance *instance = pci_get_drvdata(pdev);

 if (!instance)
  return;

 instance->unload = 1;

 if (megasas_wait_for_adapter_operational(instance))
  goto skip_firing_dcmds;

 megasas_flush_cache(instance);
 megasas_shutdown_controller(instance, MR_DCMD_CTRL_SHUTDOWN);

skip_firing_dcmds:
 instance->instancet->disable_intr(instance);
 megasas_destroy_irqs(instance);

 if (instance->msix_vectors)
  pci_free_irq_vectors(instance->pdev);
}
