
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int __ffs64 (scalar_t__) ;

__attribute__((used)) static inline int
mv_ffc64(u64 v)
{
 u64 x = ~v;
 return x ? __ffs64(x) : -1;
}
