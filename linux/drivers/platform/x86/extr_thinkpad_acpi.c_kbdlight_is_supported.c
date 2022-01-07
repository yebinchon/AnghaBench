
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int TPACPI_DBG_INIT ;
 int acpi_evalf (int ,int*,char*,char*,int ) ;
 int acpi_has_method (int ,char*) ;
 int hkey_handle ;
 int vdbg_printk (int ,char*,...) ;

__attribute__((used)) static bool kbdlight_is_supported(void)
{
 int status = 0;

 if (!hkey_handle)
  return 0;

 if (!acpi_has_method(hkey_handle, "MLCG")) {
  vdbg_printk(TPACPI_DBG_INIT, "kbdlight MLCG is unavailable\n");
  return 0;
 }

 if (!acpi_evalf(hkey_handle, &status, "MLCG", "qdd", 0)) {
  vdbg_printk(TPACPI_DBG_INIT, "kbdlight MLCG failed\n");
  return 0;
 }

 if (status < 0) {
  vdbg_printk(TPACPI_DBG_INIT, "kbdlight MLCG err: %d\n", status);
  return 0;
 }

 vdbg_printk(TPACPI_DBG_INIT, "kbdlight MLCG returned 0x%x\n", status);
 return status & BIT(9);
}
