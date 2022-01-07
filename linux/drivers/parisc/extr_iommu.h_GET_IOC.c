
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_hba_data {struct ioc* iommu; } ;
struct ioc {int dummy; } ;
struct device {int dummy; } ;


 struct pci_hba_data* parisc_walk_tree (struct device*) ;

__attribute__((used)) static inline struct ioc *GET_IOC(struct device *dev)
{
 struct pci_hba_data *pdata = parisc_walk_tree(dev);

 if (!pdata)
  return ((void*)0);
 return pdata->iommu;
}
