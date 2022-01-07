
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (unsigned int) ;

__attribute__((used)) static inline int
mt76x02_sign_extend(u32 val, unsigned int size)
{
 bool sign = val & BIT(size - 1);

 val &= BIT(size - 1) - 1;

 return sign ? val : -val;
}
