
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;


 int do_div (int,int) ;

__attribute__((used)) static inline unsigned int ltc3589_scale(unsigned int uV, u32 r1, u32 r2)
{
 uint64_t tmp;

 if (uV == 0)
  return 0;

 tmp = (uint64_t)uV * r1;
 do_div(tmp, r2);
 return uV + (unsigned int)tmp;
}
