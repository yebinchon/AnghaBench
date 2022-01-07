
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_epf_test_reg {int status; } ;
struct pci_epf_test {int test_reg_bar; struct pci_epf_test_reg** reg; struct pci_epf* epf; } ;
struct device {int dummy; } ;
struct pci_epf {int func_no; struct pci_epc* epc; struct device dev; } ;
struct pci_epc {int dummy; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;





 int PCI_EPC_IRQ_LEGACY ;
 int PCI_EPC_IRQ_MSI ;
 int PCI_EPC_IRQ_MSIX ;
 int STATUS_IRQ_RAISED ;
 int dev_err (struct device*,char*) ;
 int pci_epc_raise_irq (struct pci_epc*,int ,int ,int ) ;

__attribute__((used)) static void pci_epf_test_raise_irq(struct pci_epf_test *epf_test, u8 irq_type,
       u16 irq)
{
 struct pci_epf *epf = epf_test->epf;
 struct device *dev = &epf->dev;
 struct pci_epc *epc = epf->epc;
 enum pci_barno test_reg_bar = epf_test->test_reg_bar;
 struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];

 reg->status |= STATUS_IRQ_RAISED;

 switch (irq_type) {
 case 130:
  pci_epc_raise_irq(epc, epf->func_no, PCI_EPC_IRQ_LEGACY, 0);
  break;
 case 129:
  pci_epc_raise_irq(epc, epf->func_no, PCI_EPC_IRQ_MSI, irq);
  break;
 case 128:
  pci_epc_raise_irq(epc, epf->func_no, PCI_EPC_IRQ_MSIX, irq);
  break;
 default:
  dev_err(dev, "Failed to raise IRQ, unknown type\n");
  break;
 }
}
