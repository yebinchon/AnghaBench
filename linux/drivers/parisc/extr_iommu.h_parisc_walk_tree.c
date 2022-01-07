
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_hba_data {int dummy; } ;
struct device {struct pci_hba_data* platform_data; struct device* parent; } ;


 scalar_t__ likely (struct pci_hba_data*) ;

__attribute__((used)) static inline struct pci_hba_data *parisc_walk_tree(struct device *dev)
{
 struct device *otherdev;

 if (likely(dev->platform_data))
  return dev->platform_data;


 for (otherdev = dev->parent;
      otherdev;
      otherdev = otherdev->parent) {
  if (otherdev->platform_data) {
   dev->platform_data = otherdev->platform_data;
   break;
  }
 }

 return dev->platform_data;
}
