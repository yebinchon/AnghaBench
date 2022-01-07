
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hba {scalar_t__* pci_base; int pdev; } ;


 unsigned char MAX_BASE_ADDRESS ;
 int pci_write_config_dword (int ,int,scalar_t__) ;

__attribute__((used)) static void mvumi_restore_bar_addr(struct mvumi_hba *mhba)
{
 unsigned char i;

 for (i = 0; i < MAX_BASE_ADDRESS; i++) {
  if (mhba->pci_base[i])
   pci_write_config_dword(mhba->pdev, 0x10 + i * 4,
      mhba->pci_base[i]);
 }
}
