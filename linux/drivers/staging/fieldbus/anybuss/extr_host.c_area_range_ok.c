
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static bool area_range_ok(u16 addr, size_t count, u16 area_start,
     size_t area_sz)
{
 u16 area_end_ex = area_start + area_sz;
 u16 addr_end_ex;

 if (addr < area_start)
  return 0;
 if (addr >= area_end_ex)
  return 0;
 addr_end_ex = addr + count;
 if (addr_end_ex > area_end_ex)
  return 0;
 return 1;
}
