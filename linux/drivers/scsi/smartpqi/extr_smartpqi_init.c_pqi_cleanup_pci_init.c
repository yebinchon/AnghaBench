
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int pci_dev; int iomem_base; } ;


 int iounmap (int ) ;
 int pci_disable_device (int ) ;
 scalar_t__ pci_is_enabled (int ) ;
 int pci_release_regions (int ) ;
 int pci_set_drvdata (int ,int *) ;

__attribute__((used)) static void pqi_cleanup_pci_init(struct pqi_ctrl_info *ctrl_info)
{
 iounmap(ctrl_info->iomem_base);
 pci_release_regions(ctrl_info->pci_dev);
 if (pci_is_enabled(ctrl_info->pci_dev))
  pci_disable_device(ctrl_info->pci_dev);
 pci_set_drvdata(ctrl_info->pci_dev, ((void*)0));
}
