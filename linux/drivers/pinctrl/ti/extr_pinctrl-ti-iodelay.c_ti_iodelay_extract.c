
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __ffs (int) ;

__attribute__((used)) static inline u32 ti_iodelay_extract(u32 val, u32 mask)
{
 return (val & mask) >> __ffs(mask);
}
