
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int QEDF_MODE_NORMAL ;
 int __qedf_remove (struct pci_dev*,int ) ;

__attribute__((used)) static void qedf_shutdown(struct pci_dev *pdev)
{
 __qedf_remove(pdev, QEDF_MODE_NORMAL);
}
