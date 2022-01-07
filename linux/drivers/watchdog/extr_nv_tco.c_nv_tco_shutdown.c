
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;


 int MCP51_SMBUS_SETUP_B ;
 int MCP51_SMBUS_SETUP_B_TCO_REBOOT ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int tco_pci ;
 int tco_timer_stop () ;

__attribute__((used)) static void nv_tco_shutdown(struct platform_device *dev)
{
 u32 val;

 tco_timer_stop();



 pci_read_config_dword(tco_pci, MCP51_SMBUS_SETUP_B, &val);
 val &= ~MCP51_SMBUS_SETUP_B_TCO_REBOOT;
 pci_write_config_dword(tco_pci, MCP51_SMBUS_SETUP_B, val);
}
