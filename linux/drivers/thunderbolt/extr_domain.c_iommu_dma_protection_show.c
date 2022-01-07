
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ dmar_platform_optin () ;
 scalar_t__ iommu_present (int *) ;
 int pci_bus_type ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t iommu_dma_protection_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{





 return sprintf(buf, "%d\n",
         iommu_present(&pci_bus_type) && dmar_platform_optin());
}
