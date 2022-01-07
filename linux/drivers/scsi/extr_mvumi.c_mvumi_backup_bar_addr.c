
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hba {int * pci_base; int pdev; } ;


 unsigned char MAX_BASE_ADDRESS ;
 int pci_read_config_dword (int ,int,int *) ;

__attribute__((used)) static void mvumi_backup_bar_addr(struct mvumi_hba *mhba)
{
 unsigned char i;

 for (i = 0; i < MAX_BASE_ADDRESS; i++) {
  pci_read_config_dword(mhba->pdev, 0x10 + i * 4,
      &mhba->pci_base[i]);
 }
}
