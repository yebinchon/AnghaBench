
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 unsigned char PM2_REFERENCE_CLOCK ;

__attribute__((used)) static void pm2v_mnp(u32 clk, unsigned char *mm, unsigned char *nn,
       unsigned char *pp)
{
 unsigned char m;
 unsigned char n;
 unsigned char p;
 u32 f;
 s32 delta = 1000;

 *mm = *nn = *pp = 0;
 for (m = 1; m < 128; m++) {
  for (n = 2 * m + 1; n; n++) {
   for (p = 0; p < 2; p++) {
    f = (PM2_REFERENCE_CLOCK >> (p + 1)) * n / m;
    if (clk > f - delta && clk < f + delta) {
     delta = (clk > f) ? clk - f : f - clk;
     *mm = m;
     *nn = n;
     *pp = p;
    }
   }
  }
 }
}
