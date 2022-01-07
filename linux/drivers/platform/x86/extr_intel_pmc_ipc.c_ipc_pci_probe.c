
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct intel_pmc_ipc_dev {int * dev; int ipc_base; int cmd_complete; int gcr_lock; int irq_mode; } ;


 int EBUSY ;
 int IPC_TRIGGER_MODE_IRQ ;
 int dev_err (int *,char*) ;
 int devm_request_irq (int *,int ,int ,int ,char*,struct intel_pmc_ipc_dev*) ;
 int init_completion (int *) ;
 int ioc ;
 struct intel_pmc_ipc_dev ipcdev ;
 int pci_name (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct intel_pmc_ipc_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ipc_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct intel_pmc_ipc_dev *pmc = &ipcdev;
 int ret;


 if (pmc->dev)
  return -EBUSY;

 pmc->irq_mode = IPC_TRIGGER_MODE_IRQ;

 spin_lock_init(&ipcdev.gcr_lock);

 ret = pcim_enable_device(pdev);
 if (ret)
  return ret;

 ret = pcim_iomap_regions(pdev, 1 << 0, pci_name(pdev));
 if (ret)
  return ret;

 init_completion(&pmc->cmd_complete);

 pmc->ipc_base = pcim_iomap_table(pdev)[0];

 ret = devm_request_irq(&pdev->dev, pdev->irq, ioc, 0, "intel_pmc_ipc",
    pmc);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request irq\n");
  return ret;
 }

 pmc->dev = &pdev->dev;

 pci_set_drvdata(pdev, pmc);

 return 0;
}
