
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int s6_validate (int ) ;

__attribute__((used)) static inline int s6_to_int(u32 reg)
{
 int s6;

 s6 = s6_validate(reg);
 if (s6 & BIT(5))
  s6 -= BIT(6);

 return s6;
}
