
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DPAA_ASSERT (int) ;
 int ENOMEM ;
 int REG_FBPR_AR ;
 int REG_FBPR_BAR ;
 int REG_FBPR_BARE ;
 int __bman_requires_cleanup ;
 int bm_ccsr_in (int ) ;
 int bm_ccsr_out (int ,int) ;
 int ilog2 (int) ;
 scalar_t__ is_power_of_2 (int) ;
 int lower_32_bits (int) ;
 int pr_err (char*,int,int,int) ;
 int pr_info (char*) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int bm_set_memory(u64 ba, u32 size)
{
 u32 bar, bare;
 u32 exp = ilog2(size);

 DPAA_ASSERT(size >= 4096 && size <= 1024*1024*1024 &&
     is_power_of_2(size));

 DPAA_ASSERT(!(ba & (size - 1)));


 bar = bm_ccsr_in(REG_FBPR_BAR);
 if (bar) {

  bare = bm_ccsr_in(REG_FBPR_BARE);
  if (bare != upper_32_bits(ba) || bar != lower_32_bits(ba)) {
   pr_err("Attempted to reinitialize BMan with different BAR, got 0x%llx read BARE=0x%x BAR=0x%x\n",
          ba, bare, bar);
   return -ENOMEM;
  }
  pr_info("BMan BAR already configured\n");
  __bman_requires_cleanup = 1;
  return 1;
 }

 bm_ccsr_out(REG_FBPR_BARE, upper_32_bits(ba));
 bm_ccsr_out(REG_FBPR_BAR, lower_32_bits(ba));
 bm_ccsr_out(REG_FBPR_AR, exp - 1);
 return 0;
}
