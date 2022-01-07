
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sp5100_tco {int tco_reg_layout; } ;


 int EFCH_PM_DECODEEN3 ;
 int EFCH_PM_DECODEEN_SECOND_RES ;
 int EFCH_PM_WATCHDOG_DISABLE ;
 int SB800_PCI_WATCHDOG_DECODE_EN ;
 int SB800_PM_WATCHDOG_CONFIG ;
 int SB800_PM_WATCHDOG_CONTROL ;
 int SB800_PM_WATCHDOG_DISABLE ;
 int SB800_PM_WATCHDOG_SECOND_RES ;
 int SP5100_PCI_WATCHDOG_DECODE_EN ;
 int SP5100_PCI_WATCHDOG_MISC_REG ;
 int SP5100_PM_WATCHDOG_CONTROL ;
 int SP5100_PM_WATCHDOG_DISABLE ;
 int SP5100_PM_WATCHDOG_SECOND_RES ;

 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;


 int sp5100_tco_pci ;
 int sp5100_tco_update_pm_reg8 (int ,int,int ) ;

__attribute__((used)) static void tco_timer_enable(struct sp5100_tco *tco)
{
 u32 val;

 switch (tco->tco_reg_layout) {
 case 129:


  sp5100_tco_update_pm_reg8(SB800_PM_WATCHDOG_CONFIG,
       0xff, SB800_PM_WATCHDOG_SECOND_RES);


  sp5100_tco_update_pm_reg8(SB800_PM_WATCHDOG_CONTROL,
       ~SB800_PM_WATCHDOG_DISABLE,
       SB800_PCI_WATCHDOG_DECODE_EN);
  break;
 case 128:


  pci_read_config_dword(sp5100_tco_pci,
          SP5100_PCI_WATCHDOG_MISC_REG,
          &val);

  val |= SP5100_PCI_WATCHDOG_DECODE_EN;

  pci_write_config_dword(sp5100_tco_pci,
           SP5100_PCI_WATCHDOG_MISC_REG,
           val);


  sp5100_tco_update_pm_reg8(SP5100_PM_WATCHDOG_CONTROL,
       ~SP5100_PM_WATCHDOG_DISABLE,
       SP5100_PM_WATCHDOG_SECOND_RES);
  break;
 case 130:

  sp5100_tco_update_pm_reg8(EFCH_PM_DECODEEN3,
       ~EFCH_PM_WATCHDOG_DISABLE,
       EFCH_PM_DECODEEN_SECOND_RES);
  break;
 }
}
