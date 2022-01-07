
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL4030_BCIAUTOWEN ;
 int TWL4030_CONFIG_DONE ;
 int TWL4030_PM_MASTER_BOOT_BCI ;
 int TWL_MODULE_PM_MASTER ;
 int twl4030_clear_set (int ,int,int,int ) ;

__attribute__((used)) static int twl4030_clear_set_boot_bci(u8 clear, u8 set)
{
 return twl4030_clear_set(TWL_MODULE_PM_MASTER, clear,
   TWL4030_CONFIG_DONE | TWL4030_BCIAUTOWEN | set,
   TWL4030_PM_MASTER_BOOT_BCI);
}
