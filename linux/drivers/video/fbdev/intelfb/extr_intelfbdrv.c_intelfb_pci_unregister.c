
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intelfb_info {int dummy; } ;


 int DBG_MSG (char*) ;
 int cleanup (struct intelfb_info*) ;
 struct intelfb_info* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void intelfb_pci_unregister(struct pci_dev *pdev)
{
 struct intelfb_info *dinfo = pci_get_drvdata(pdev);

 DBG_MSG("intelfb_pci_unregister\n");

 if (!dinfo)
  return;

 cleanup(dinfo);
}
