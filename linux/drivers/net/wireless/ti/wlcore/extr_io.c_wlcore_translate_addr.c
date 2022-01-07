
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int start; int size; } ;
struct TYPE_7__ {int start; int size; } ;
struct TYPE_6__ {int start; int size; } ;
struct TYPE_5__ {int start; int size; } ;
struct wlcore_partition_set {TYPE_4__ mem2; TYPE_3__ reg; TYPE_2__ mem; TYPE_1__ mem3; } ;
struct wl1271 {struct wlcore_partition_set curr_part; } ;


 int WARN (int,char*,int) ;

int wlcore_translate_addr(struct wl1271 *wl, int addr)
{
 struct wlcore_partition_set *part = &wl->curr_part;
 if ((addr >= part->mem.start) &&
     (addr < part->mem.start + part->mem.size))
  return addr - part->mem.start;
 else if ((addr >= part->reg.start) &&
   (addr < part->reg.start + part->reg.size))
  return addr - part->reg.start + part->mem.size;
 else if ((addr >= part->mem2.start) &&
   (addr < part->mem2.start + part->mem2.size))
  return addr - part->mem2.start + part->mem.size +
   part->reg.size;
 else if ((addr >= part->mem3.start) &&
   (addr < part->mem3.start + part->mem3.size))
  return addr - part->mem3.start + part->mem.size +
   part->reg.size + part->mem2.size;

 WARN(1, "HW address 0x%x out of range", addr);
 return 0;
}
