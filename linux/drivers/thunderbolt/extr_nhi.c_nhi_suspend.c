
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 struct tb* pci_get_drvdata (struct pci_dev*) ;
 int tb_domain_suspend (struct tb*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int nhi_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct tb *tb = pci_get_drvdata(pdev);

 return tb_domain_suspend(tb);
}
