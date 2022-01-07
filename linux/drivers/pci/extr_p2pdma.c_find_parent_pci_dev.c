
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {struct device* parent; } ;


 scalar_t__ dev_is_pci (struct device*) ;
 struct device* get_device (struct device*) ;
 int put_device (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static struct pci_dev *find_parent_pci_dev(struct device *dev)
{
 struct device *parent;

 dev = get_device(dev);

 while (dev) {
  if (dev_is_pci(dev))
   return to_pci_dev(dev);

  parent = get_device(dev->parent);
  put_device(dev);
  dev = parent;
 }

 return ((void*)0);
}
