
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int errata; } ;


 int CHIP_ERRATA_PLL_DELAY ;
 int CHIP_ERRATA_R300_CG ;
 int CLOCK_CNTL_DATA ;
 int CLOCK_CNTL_INDEX ;
 int INREG (int ) ;
 int OUTREG (int ,int) ;
 int PLL_WR_EN ;
 int _radeon_msleep (struct radeonfb_info*,int) ;

void radeon_pll_errata_after_data_slow(struct radeonfb_info *rinfo)
{
 if (rinfo->errata & CHIP_ERRATA_PLL_DELAY) {

  _radeon_msleep(rinfo, 5);
 }
 if (rinfo->errata & CHIP_ERRATA_R300_CG) {
  u32 save, tmp;
  save = INREG(CLOCK_CNTL_INDEX);
  tmp = save & ~(0x3f | PLL_WR_EN);
  OUTREG(CLOCK_CNTL_INDEX, tmp);
  tmp = INREG(CLOCK_CNTL_DATA);
  OUTREG(CLOCK_CNTL_INDEX, save);
 }
}
