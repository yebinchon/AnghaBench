
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;


 int BIT (int) ;
 int GENMASK (int,int ) ;

__attribute__((used)) static inline s8 s6_to_s8(u32 val)
{
 s8 ret = val & GENMASK(5, 0);

 if (ret & BIT(5))
  ret -= BIT(6);
 return ret;
}
