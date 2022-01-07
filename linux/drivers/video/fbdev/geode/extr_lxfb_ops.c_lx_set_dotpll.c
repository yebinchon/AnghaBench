
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int MSR_GLCP_DOTPLL ;
 scalar_t__ MSR_GLCP_DOTPLL_BYPASS ;
 scalar_t__ MSR_GLCP_DOTPLL_DOTRESET ;
 scalar_t__ MSR_GLCP_DOTPLL_HALFPIX ;
 scalar_t__ MSR_GLCP_DOTPLL_LOCK ;
 int rdmsr (int ,scalar_t__,scalar_t__) ;
 int udelay (int) ;
 int wrmsr (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void lx_set_dotpll(u32 pllval)
{
 u32 dotpll_lo, dotpll_hi;
 int i;

 rdmsr(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);

 if ((dotpll_lo & MSR_GLCP_DOTPLL_LOCK) && (dotpll_hi == pllval))
  return;

 dotpll_hi = pllval;
 dotpll_lo &= ~(MSR_GLCP_DOTPLL_BYPASS | MSR_GLCP_DOTPLL_HALFPIX);
 dotpll_lo |= MSR_GLCP_DOTPLL_DOTRESET;

 wrmsr(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);



 udelay(100);



 for (i = 0; i < 1000; i++) {
  rdmsr(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);
  if (dotpll_lo & MSR_GLCP_DOTPLL_LOCK)
   break;
 }



 dotpll_lo &= ~MSR_GLCP_DOTPLL_DOTRESET;
 wrmsr(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);
}
