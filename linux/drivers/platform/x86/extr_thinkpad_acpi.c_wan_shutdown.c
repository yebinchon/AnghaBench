
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TPACPI_DBG_RFKILL ;
 int TP_ACPI_WGSV_SAVE_STATE ;
 int acpi_evalf (int *,int *,char*,char*,int ) ;
 int pr_notice (char*) ;
 int vdbg_printk (int ,char*) ;

__attribute__((used)) static void wan_shutdown(void)
{

 if (!acpi_evalf(((void*)0), ((void*)0), "\\WGSV", "vd",
   TP_ACPI_WGSV_SAVE_STATE))
  pr_notice("failed to save WWAN state to NVRAM\n");
 else
  vdbg_printk(TPACPI_DBG_RFKILL,
   "WWAN state saved to NVRAM\n");
}
