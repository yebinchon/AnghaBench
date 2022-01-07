
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atyfb_par {int dummy; } ;


 int CLOCK_CNTL_ADDR ;
 int CLOCK_CNTL_DATA ;
 int PLL_ADDR ;
 int aty_ld_8 (int ,struct atyfb_par const*) ;
 int aty_st_8 (int ,int,struct atyfb_par const*) ;

u8 aty_ld_pll_ct(int offset, const struct atyfb_par *par)
{
 u8 res;


 aty_st_8(CLOCK_CNTL_ADDR, (offset << 2) & PLL_ADDR, par);

 res = aty_ld_8(CLOCK_CNTL_DATA, par);
 return res;
}
