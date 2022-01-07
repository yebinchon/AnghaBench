
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; int irq; } ;
struct intel_scu_ipc_pdata_t {int i2c_len; int i2c_base; int irq_mode; } ;
struct intel_scu_ipc_dev {int * dev; int i2c_base; int ipc_base; int cmd_complete; int irq_mode; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int devm_request_irq (int *,int ,int ,int ,char*,struct intel_scu_ipc_dev*) ;
 int init_completion (int *) ;
 int intel_scu_devices_create () ;
 int ioc ;
 int ioremap_nocache (int ,int ) ;
 struct intel_scu_ipc_dev ipcdev ;
 int pci_name (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct intel_scu_ipc_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;

__attribute__((used)) static int ipc_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int err;
 struct intel_scu_ipc_dev *scu = &ipcdev;
 struct intel_scu_ipc_pdata_t *pdata;

 if (scu->dev)
  return -EBUSY;

 pdata = (struct intel_scu_ipc_pdata_t *)id->driver_data;
 if (!pdata)
  return -ENODEV;

 scu->irq_mode = pdata->irq_mode;

 err = pcim_enable_device(pdev);
 if (err)
  return err;

 err = pcim_iomap_regions(pdev, 1 << 0, pci_name(pdev));
 if (err)
  return err;

 init_completion(&scu->cmd_complete);

 scu->ipc_base = pcim_iomap_table(pdev)[0];

 scu->i2c_base = ioremap_nocache(pdata->i2c_base, pdata->i2c_len);
 if (!scu->i2c_base)
  return -ENOMEM;

 err = devm_request_irq(&pdev->dev, pdev->irq, ioc, 0, "intel_scu_ipc",
          scu);
 if (err)
  return err;


 scu->dev = &pdev->dev;

 intel_scu_devices_create();

 pci_set_drvdata(pdev, scu);
 return 0;
}
