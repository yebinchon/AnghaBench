
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AMX3_PM_SRAM_SYMBOL_OFFSET (unsigned long) ;
 scalar_t__ am33xx_do_wfi_sram ;

__attribute__((used)) static u32 sram_suspend_address(unsigned long addr)
{
 return ((unsigned long)am33xx_do_wfi_sram +
  AMX3_PM_SRAM_SYMBOL_OFFSET(addr));
}
