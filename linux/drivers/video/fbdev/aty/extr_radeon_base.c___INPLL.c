
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int dummy; } ;


 int CLOCK_CNTL_DATA ;
 int CLOCK_CNTL_INDEX ;
 int INREG (int ) ;
 int OUTREG8 (int ,int) ;
 int radeon_pll_errata_after_data (struct radeonfb_info*) ;
 int radeon_pll_errata_after_index (struct radeonfb_info*) ;

u32 __INPLL(struct radeonfb_info *rinfo, u32 addr)
{
 u32 data;

 OUTREG8(CLOCK_CNTL_INDEX, addr & 0x0000003f);
 radeon_pll_errata_after_index(rinfo);
 data = INREG(CLOCK_CNTL_DATA);
 radeon_pll_errata_after_data(rinfo);
 return data;
}
