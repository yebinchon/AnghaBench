
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ZIIRAVE_FIRM_FLASH_MEMORY_END ;
 scalar_t__ ZIIRAVE_FIRM_FLASH_MEMORY_START ;

__attribute__((used)) static bool ziirave_firm_addr_readonly(u32 addr)
{
 return addr < ZIIRAVE_FIRM_FLASH_MEMORY_START ||
        addr > ZIIRAVE_FIRM_FLASH_MEMORY_END;
}
