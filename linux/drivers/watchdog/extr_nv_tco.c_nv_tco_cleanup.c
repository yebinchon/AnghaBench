
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MCP51_SMBUS_SETUP_B ;
 int MCP51_SMBUS_SETUP_B_TCO_REBOOT ;
 int misc_deregister (int *) ;
 int nowayout ;
 int nv_tco_miscdev ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 int pr_crit (char*) ;
 int release_region (int ,int) ;
 int tco_pci ;
 int tco_timer_stop () ;
 int tcobase ;

__attribute__((used)) static void nv_tco_cleanup(void)
{
 u32 val;


 if (!nowayout)
  tco_timer_stop();


 pci_read_config_dword(tco_pci, MCP51_SMBUS_SETUP_B, &val);
 val &= ~MCP51_SMBUS_SETUP_B_TCO_REBOOT;
 pci_write_config_dword(tco_pci, MCP51_SMBUS_SETUP_B, val);
 pci_read_config_dword(tco_pci, MCP51_SMBUS_SETUP_B, &val);
 if (val & MCP51_SMBUS_SETUP_B_TCO_REBOOT) {
  pr_crit("Couldn't unset REBOOT bit.  Machine may soon reset\n");
 }


 misc_deregister(&nv_tco_miscdev);
 release_region(tcobase, 0x10);
}
