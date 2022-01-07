
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;
 int PCIE_PORT_DEVICE_MAXSERVICES ;
 int PCIE_PORT_SERVICE_HP ;
 int get_port_device_capability (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcie_device_init (struct pci_dev*,int,int) ;
 int pcie_init_service_irqs (struct pci_dev*,int*,int) ;

int pcie_port_device_register(struct pci_dev *dev)
{
 int status, capabilities, i, nr_service;
 int irqs[PCIE_PORT_DEVICE_MAXSERVICES];


 status = pci_enable_device(dev);
 if (status)
  return status;


 capabilities = get_port_device_capability(dev);
 if (!capabilities)
  return 0;

 pci_set_master(dev);







 status = pcie_init_service_irqs(dev, irqs, capabilities);
 if (status) {
  capabilities &= PCIE_PORT_SERVICE_HP;
  if (!capabilities)
   goto error_disable;
 }


 status = -ENODEV;
 nr_service = 0;
 for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++) {
  int service = 1 << i;
  if (!(capabilities & service))
   continue;
  if (!pcie_device_init(dev, service, irqs[i]))
   nr_service++;
 }
 if (!nr_service)
  goto error_cleanup_irqs;

 return 0;

error_cleanup_irqs:
 pci_free_irq_vectors(dev);
error_disable:
 pci_disable_device(dev);
 return status;
}
