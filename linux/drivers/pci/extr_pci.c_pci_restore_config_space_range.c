
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int * saved_config_space; } ;


 int pci_restore_config_dword (struct pci_dev*,int,int ,int,int) ;

__attribute__((used)) static void pci_restore_config_space_range(struct pci_dev *pdev,
        int start, int end, int retry,
        bool force)
{
 int index;

 for (index = end; index >= start; index--)
  pci_restore_config_dword(pdev, 4 * index,
      pdev->saved_config_space[index],
      retry, force);
}
