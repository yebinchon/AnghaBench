
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;

inline u64 be32_to_u64(__be32 hi, __be32 lo)
{
 return ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo));
}
