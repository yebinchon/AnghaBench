
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int div_u64 (int,int) ;

__attribute__((used)) static inline u64 div_factor(u64 num, int factor)
{
 if (factor == 10)
  return num;
 num *= factor;
 return div_u64(num, 10);
}
