
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static inline u64 time_to_nsec(u32 value)
{
 return ((u64)value) * 128000ull;
}
