
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_request_selected_regions (struct pci_dev*,int,char const*) ;

int pci_request_regions(struct pci_dev *pdev, const char *res_name)
{
 return pci_request_selected_regions(pdev, ((1 << 6) - 1), res_name);
}
