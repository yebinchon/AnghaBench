
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pcie_device {int irq; struct pci_dev* port; struct device device; } ;
struct pci_dev {int dummy; } ;
struct aer_rpc {struct pci_dev* rpd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int aer_enable_rootport (struct aer_rpc*) ;
 int aer_irq ;
 int aer_isr ;
 struct aer_rpc* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int ,int ,int ,char*,struct pcie_device*) ;
 int pci_err (struct pci_dev*,char*,int ) ;
 int pci_info (struct pci_dev*,char*,int ) ;
 int set_service_data (struct pcie_device*,struct aer_rpc*) ;

__attribute__((used)) static int aer_probe(struct pcie_device *dev)
{
 int status;
 struct aer_rpc *rpc;
 struct device *device = &dev->device;
 struct pci_dev *port = dev->port;

 rpc = devm_kzalloc(device, sizeof(struct aer_rpc), GFP_KERNEL);
 if (!rpc)
  return -ENOMEM;

 rpc->rpd = port;
 set_service_data(dev, rpc);

 status = devm_request_threaded_irq(device, dev->irq, aer_irq, aer_isr,
        IRQF_SHARED, "aerdrv", dev);
 if (status) {
  pci_err(port, "request AER IRQ %d failed\n", dev->irq);
  return status;
 }

 aer_enable_rootport(rpc);
 pci_info(port, "enabled with IRQ %d\n", dev->irq);
 return 0;
}
