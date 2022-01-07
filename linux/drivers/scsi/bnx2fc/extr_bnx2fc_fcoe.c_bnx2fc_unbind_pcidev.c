
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_hba {char* chip_num; int * pcidev; } ;


 int pci_dev_put (int *) ;

__attribute__((used)) static void bnx2fc_unbind_pcidev(struct bnx2fc_hba *hba)
{
 if (hba->pcidev) {
  hba->chip_num[0] = '\0';
  pci_dev_put(hba->pcidev);
 }
 hba->pcidev = ((void*)0);
}
