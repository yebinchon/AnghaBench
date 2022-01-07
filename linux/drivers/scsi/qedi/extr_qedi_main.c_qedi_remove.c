
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int QEDI_MODE_NORMAL ;
 int __qedi_remove (struct pci_dev*,int ) ;

__attribute__((used)) static void qedi_remove(struct pci_dev *pdev)
{
 __qedi_remove(pdev, QEDI_MODE_NORMAL);
}
