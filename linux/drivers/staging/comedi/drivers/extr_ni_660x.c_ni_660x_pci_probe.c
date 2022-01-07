
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int comedi_pci_auto_config (struct pci_dev*,int *,int ) ;
 int ni_660x_driver ;

__attribute__((used)) static int ni_660x_pci_probe(struct pci_dev *dev,
        const struct pci_device_id *id)
{
 return comedi_pci_auto_config(dev, &ni_660x_driver, id->driver_data);
}
