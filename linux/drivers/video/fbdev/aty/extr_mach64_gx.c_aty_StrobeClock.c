
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atyfb_par {scalar_t__ clk_wr_offset; } ;


 scalar_t__ CLOCK_CNTL ;
 int CLOCK_STROBE ;
 int aty_ld_8 (scalar_t__,struct atyfb_par const*) ;
 int aty_st_8 (scalar_t__,int,struct atyfb_par const*) ;
 int udelay (int) ;

__attribute__((used)) static void aty_StrobeClock(const struct atyfb_par *par)
{
 u8 tmp;

 udelay(26);

 tmp = aty_ld_8(CLOCK_CNTL, par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset, tmp | CLOCK_STROBE, par);
 return;
}
