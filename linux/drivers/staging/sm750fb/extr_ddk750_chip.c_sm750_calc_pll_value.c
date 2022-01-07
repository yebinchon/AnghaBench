
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_value {int inputFreq; scalar_t__ clockType; int M; int N; int POD; int OD; } ;


 int BIT (int) ;
 scalar_t__ MXCLK_PLL ;
 scalar_t__ SM750LE ;
 unsigned int abs (unsigned int) ;
 scalar_t__ sm750_get_chip_type () ;

unsigned int sm750_calc_pll_value(unsigned int request_orig,
      struct pll_value *pll)
{




 int N, M, X, d;
 int mini_diff;
 unsigned int RN, quo, rem, fl_quo;
 unsigned int input, request;
 unsigned int tmp_clock, ret;
 const int max_OD = 3;
 int max_d = 6;

 if (sm750_get_chip_type() == SM750LE) {





  return request_orig;
 }

 ret = 0;
 mini_diff = ~0;
 request = request_orig / 1000;
 input = pll->inputFreq / 1000;





 if (pll->clockType == MXCLK_PLL)
  max_d = 3;

 for (N = 15; N > 1; N--) {




  RN = N * request;
  quo = RN / input;
  rem = RN % input;
  fl_quo = rem * 10000 / input;

  for (d = max_d; d >= 0; d--) {
   X = BIT(d);
   M = quo * X;
   M += fl_quo * X / 10000;

   M += (fl_quo * X % 10000) > 5000 ? 1 : 0;
   if (M < 256 && M > 0) {
    unsigned int diff;

    tmp_clock = pll->inputFreq * M / N / X;
    diff = abs(tmp_clock - request_orig);
    if (diff < mini_diff) {
     pll->M = M;
     pll->N = N;
     pll->POD = 0;
     if (d > max_OD)
      pll->POD = d - max_OD;
     pll->OD = d - pll->POD;
     mini_diff = diff;
     ret = tmp_clock;
    }
   }
  }
 }
 return ret;
}
