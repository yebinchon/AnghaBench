
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 int AD9834_FREQ_BITS ;
 scalar_t__ BIT (int ) ;
 int do_div (unsigned long long,unsigned long) ;

__attribute__((used)) static unsigned int ad9834_calc_freqreg(unsigned long mclk, unsigned long fout)
{
 unsigned long long freqreg = (u64)fout * (u64)BIT(AD9834_FREQ_BITS);

 do_div(freqreg, mclk);
 return freqreg;
}
