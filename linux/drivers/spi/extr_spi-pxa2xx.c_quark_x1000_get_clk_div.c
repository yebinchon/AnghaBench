
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;


 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 unsigned long __ffs (unsigned long) ;
 long abs (unsigned long) ;
 int do_div (unsigned long,int) ;
 int fls_long (unsigned long) ;

__attribute__((used)) static unsigned int quark_x1000_get_clk_div(int rate, u32 *dds)
{
 unsigned long xtal = 200000000;
 unsigned long fref = xtal / 2;


 unsigned long fref1 = fref / 2;
 unsigned long fref2 = fref * 2 / 5;
 unsigned long scale;
 unsigned long q, q1, q2;
 long r, r1, r2;
 u32 mul;




 mul = (1 << 24) >> 1;


 q1 = DIV_ROUND_UP(fref1, rate);


 if (q1 > 256) {

  scale = fls_long(q1 - 1);
  if (scale > 9) {
   q1 >>= scale - 9;
   mul >>= scale - 9;
  }


  q1 += q1 & 1;
 }


 scale = __ffs(q1);
 q1 >>= scale;
 mul >>= scale;


 r1 = abs(fref1 / (1 << (24 - fls_long(mul))) / q1 - rate);



 q2 = DIV_ROUND_UP(fref2, rate);
 r2 = abs(fref2 / q2 - rate);






 if (r2 >= r1 || q2 > 256) {

  r = r1;
  q = q1;
 } else {

  r = r2;
  q = q2;
  mul = (1 << 24) * 2 / 5;
 }


 if (fref / rate >= 80) {
  u64 fssp;
  u32 m;


  q1 = DIV_ROUND_UP(fref, rate);
  m = (1 << 24) / q1;


  fssp = (u64)fref * m;
  do_div(fssp, 1 << 24);
  r1 = abs(fssp - rate);


  if (r1 < r) {

   q = 1;
   mul = m;
  }
 }

 *dds = mul;
 return q - 1;
}
