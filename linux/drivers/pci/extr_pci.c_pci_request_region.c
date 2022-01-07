
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __pci_request_region (struct pci_dev*,int,char const*,int ) ;

int pci_request_region(struct pci_dev *pdev, int bar, const char *res_name)
{
 return __pci_request_region(pdev, bar, res_name, 0);
}
