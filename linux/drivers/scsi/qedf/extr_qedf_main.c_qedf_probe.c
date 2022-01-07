
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int QEDF_MODE_NORMAL ;
 int __qedf_probe (struct pci_dev*,int ) ;

__attribute__((used)) static int qedf_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 return __qedf_probe(pdev, QEDF_MODE_NORMAL);
}
