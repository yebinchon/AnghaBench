
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int dummy; } ;


 int CLOCK_CNTL_DATA ;
 int CRTC_GEN_CNTL ;
 int INREG (int ) ;

void radeon_pll_errata_after_index_slow(struct radeonfb_info *rinfo)
{

 (void)INREG(CLOCK_CNTL_DATA);
 (void)INREG(CRTC_GEN_CNTL);
}
