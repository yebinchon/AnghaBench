
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; char* handler_name; struct hv_pcibus_device* data; int handler; int * ops; int * chip; } ;
struct TYPE_4__ {int fwnode; } ;
struct hv_pcibus_device {TYPE_2__* hdev; int irq_domain; TYPE_3__ msi_info; TYPE_1__ sysdata; } ;
struct TYPE_5__ {int device; } ;


 int ENODEV ;
 int MSI_FLAG_MULTI_PCI_MSI ;
 int MSI_FLAG_PCI_MSIX ;
 int MSI_FLAG_USE_DEF_CHIP_OPS ;
 int MSI_FLAG_USE_DEF_DOM_OPS ;
 int dev_err (int *,char*) ;
 int handle_edge_irq ;
 int hv_msi_irq_chip ;
 int hv_msi_ops ;
 int pci_msi_create_irq_domain (int ,TYPE_3__*,int ) ;
 int x86_vector_domain ;

__attribute__((used)) static int hv_pcie_init_irq_domain(struct hv_pcibus_device *hbus)
{
 hbus->msi_info.chip = &hv_msi_irq_chip;
 hbus->msi_info.ops = &hv_msi_ops;
 hbus->msi_info.flags = (MSI_FLAG_USE_DEF_DOM_OPS |
  MSI_FLAG_USE_DEF_CHIP_OPS | MSI_FLAG_MULTI_PCI_MSI |
  MSI_FLAG_PCI_MSIX);
 hbus->msi_info.handler = handle_edge_irq;
 hbus->msi_info.handler_name = "edge";
 hbus->msi_info.data = hbus;
 hbus->irq_domain = pci_msi_create_irq_domain(hbus->sysdata.fwnode,
           &hbus->msi_info,
           x86_vector_domain);
 if (!hbus->irq_domain) {
  dev_err(&hbus->hdev->device,
   "Failed to build an MSI IRQ domain\n");
  return -ENODEV;
 }

 return 0;
}
