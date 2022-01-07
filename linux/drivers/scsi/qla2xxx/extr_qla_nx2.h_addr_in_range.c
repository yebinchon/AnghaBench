
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline bool addr_in_range(u64 addr, u64 low, u64 high)
{
 return addr <= high && addr >= low;
}
