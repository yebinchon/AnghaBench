
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 int WARN_ON (int ) ;
 struct device* bus_find_device (int *,struct device*,void*,int ) ;
 int in_interrupt () ;
 int match_pci_dev_by_id ;
 int pci_bus_type ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static struct pci_dev *pci_get_dev_by_id(const struct pci_device_id *id,
      struct pci_dev *from)
{
 struct device *dev;
 struct device *dev_start = ((void*)0);
 struct pci_dev *pdev = ((void*)0);

 WARN_ON(in_interrupt());
 if (from)
  dev_start = &from->dev;
 dev = bus_find_device(&pci_bus_type, dev_start, (void *)id,
         match_pci_dev_by_id);
 if (dev)
  pdev = to_pci_dev(dev);
 pci_dev_put(from);
 return pdev;
}
