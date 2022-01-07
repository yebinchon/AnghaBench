
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct msi_desc {int dev; } ;


 struct pci_dev* to_pci_dev (int ) ;

struct pci_dev *msi_desc_to_pci_dev(struct msi_desc *desc)
{
 return to_pci_dev(desc->dev);
}
