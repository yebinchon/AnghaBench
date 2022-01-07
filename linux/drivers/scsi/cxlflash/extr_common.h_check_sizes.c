
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON_NOT_POWER_OF_2 (int ) ;
 int CXLFLASH_MAX_CMDS ;
 int CXLFLASH_NUM_FC_PORTS_PER_BANK ;

__attribute__((used)) static inline void check_sizes(void)
{
 BUILD_BUG_ON_NOT_POWER_OF_2(CXLFLASH_NUM_FC_PORTS_PER_BANK);
 BUILD_BUG_ON_NOT_POWER_OF_2(CXLFLASH_MAX_CMDS);
}
