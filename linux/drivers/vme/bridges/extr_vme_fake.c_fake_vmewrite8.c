
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct fake_driver {TYPE_1__* slaves; } ;
struct TYPE_2__ {scalar_t__ aspace; scalar_t__ cycle; unsigned long long vme_base; unsigned long long size; scalar_t__ buf_base; } ;


 int FAKE_MAX_SLAVE ;
 int fake_lm_check (struct fake_driver*,unsigned long long,scalar_t__,scalar_t__) ;

__attribute__((used)) static void fake_vmewrite8(struct fake_driver *bridge, u8 *buf,
      unsigned long long addr, u32 aspace, u32 cycle)
{
 int i;
 unsigned long long start, end, offset;
 u8 *loc;

 for (i = 0; i < FAKE_MAX_SLAVE; i++) {
  if (aspace != bridge->slaves[i].aspace)
   continue;

  if (cycle != bridge->slaves[i].cycle)
   continue;

  start = bridge->slaves[i].vme_base;
  end = bridge->slaves[i].vme_base + bridge->slaves[i].size;

  if ((addr >= start) && (addr < end)) {
   offset = addr - bridge->slaves[i].vme_base;
   loc = (u8 *)((void *)bridge->slaves[i].buf_base + offset);
   *loc = *buf;

   break;
  }
 }

 fake_lm_check(bridge, addr, aspace, cycle);

}
