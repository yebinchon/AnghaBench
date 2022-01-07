
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int FRAC_BITS ;

__attribute__((used)) static inline s64 mul_frac(s64 x, s64 y)
{
 return (x * y) >> FRAC_BITS;
}
