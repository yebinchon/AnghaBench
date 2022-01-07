
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int dummy; } ;
struct pci_dev {int aer_cap; } ;
struct aer_rpc {int aer_fifo; struct pci_dev* rpd; } ;
struct aer_err_source {int status; int id; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int PCI_ERR_ROOT_COR_RCV ;
 scalar_t__ PCI_ERR_ROOT_ERR_SRC ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 int PCI_ERR_ROOT_UNCOR_RCV ;
 struct aer_rpc* get_service_data (struct pcie_device*) ;
 int kfifo_put (int *,struct aer_err_source) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static irqreturn_t aer_irq(int irq, void *context)
{
 struct pcie_device *pdev = (struct pcie_device *)context;
 struct aer_rpc *rpc = get_service_data(pdev);
 struct pci_dev *rp = rpc->rpd;
 struct aer_err_source e_src = {};
 int pos = rp->aer_cap;

 pci_read_config_dword(rp, pos + PCI_ERR_ROOT_STATUS, &e_src.status);
 if (!(e_src.status & (PCI_ERR_ROOT_UNCOR_RCV|PCI_ERR_ROOT_COR_RCV)))
  return IRQ_NONE;

 pci_read_config_dword(rp, pos + PCI_ERR_ROOT_ERR_SRC, &e_src.id);
 pci_write_config_dword(rp, pos + PCI_ERR_ROOT_STATUS, e_src.status);

 if (!kfifo_put(&rpc->aer_fifo, e_src))
  return IRQ_HANDLED;

 return IRQ_WAKE_THREAD;
}
