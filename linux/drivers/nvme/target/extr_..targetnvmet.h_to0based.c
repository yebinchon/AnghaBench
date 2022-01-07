
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le16 ;


 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ max (unsigned int,int ) ;
 int min (unsigned int,int ) ;

__attribute__((used)) static inline __le16 to0based(u32 a)
{
 return cpu_to_le16(max(1U, min(1U << 16, a)) - 1);
}
