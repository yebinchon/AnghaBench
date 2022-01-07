
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int errata; } ;


 int CHIP_ERRATA_PLL_DUMMYREADS ;
 int radeon_pll_errata_after_index_slow (struct radeonfb_info*) ;

__attribute__((used)) static inline void radeon_pll_errata_after_index(struct radeonfb_info *rinfo)
{
 if (rinfo->errata & CHIP_ERRATA_PLL_DUMMYREADS)
  radeon_pll_errata_after_index_slow(rinfo);
}
