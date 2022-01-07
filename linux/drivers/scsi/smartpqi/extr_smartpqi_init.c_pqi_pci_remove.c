
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int in_shutdown; } ;
struct pci_dev {int dummy; } ;


 struct pqi_ctrl_info* pci_get_drvdata (struct pci_dev*) ;
 int pqi_remove_ctrl (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_pci_remove(struct pci_dev *pci_dev)
{
 struct pqi_ctrl_info *ctrl_info;

 ctrl_info = pci_get_drvdata(pci_dev);
 if (!ctrl_info)
  return;

 ctrl_info->in_shutdown = 1;

 pqi_remove_ctrl(ctrl_info);
}
