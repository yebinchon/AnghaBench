
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int errata; } ;


 int CHIP_ERRATA_PLL_DELAY ;
 int CHIP_ERRATA_R300_CG ;
 int radeon_pll_errata_after_data_slow (struct radeonfb_info*) ;

__attribute__((used)) static inline void radeon_pll_errata_after_data(struct radeonfb_info *rinfo)
{
 if (rinfo->errata & (CHIP_ERRATA_PLL_DELAY|CHIP_ERRATA_R300_CG))
  radeon_pll_errata_after_data_slow(rinfo);
}
