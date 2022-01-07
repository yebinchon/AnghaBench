
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wl1251_partition {scalar_t__ size; scalar_t__ start; } ;
struct wl1251 {TYPE_1__* if_ops; scalar_t__ virtual_reg_addr; scalar_t__ virtual_mem_addr; scalar_t__ physical_reg_addr; scalar_t__ physical_mem_addr; } ;
typedef int partition ;
struct TYPE_2__ {int (* write ) (struct wl1251*,int ,struct wl1251_partition*,int) ;} ;


 int DEBUG_SPI ;
 scalar_t__ HW_ACCESS_MEMORY_MAX_RANGE ;
 int HW_ACCESS_PART0_SIZE_ADDR ;
 int stub1 (struct wl1251*,int ,struct wl1251_partition*,int) ;
 int wl1251_debug (int ,char*,...) ;

void wl1251_set_partition(struct wl1251 *wl,
     u32 mem_start, u32 mem_size,
     u32 reg_start, u32 reg_size)
{
 struct wl1251_partition partition[2];

 wl1251_debug(DEBUG_SPI, "mem_start %08X mem_size %08X",
       mem_start, mem_size);
 wl1251_debug(DEBUG_SPI, "reg_start %08X reg_size %08X",
       reg_start, reg_size);



 if ((mem_size + reg_size) > HW_ACCESS_MEMORY_MAX_RANGE) {
  wl1251_debug(DEBUG_SPI, "Total size exceeds maximum virtual"
        " address range.  Truncating partition[0].");
  mem_size = HW_ACCESS_MEMORY_MAX_RANGE - reg_size;
  wl1251_debug(DEBUG_SPI, "mem_start %08X mem_size %08X",
        mem_start, mem_size);
  wl1251_debug(DEBUG_SPI, "reg_start %08X reg_size %08X",
        reg_start, reg_size);
 }

 if ((mem_start < reg_start) &&
     ((mem_start + mem_size) > reg_start)) {


  wl1251_debug(DEBUG_SPI, "End of partition[0] is "
        "overlapping partition[1].  Adjusted.");
  mem_size = reg_start - mem_start;
  wl1251_debug(DEBUG_SPI, "mem_start %08X mem_size %08X",
        mem_start, mem_size);
  wl1251_debug(DEBUG_SPI, "reg_start %08X reg_size %08X",
        reg_start, reg_size);
 } else if ((reg_start < mem_start) &&
     ((reg_start + reg_size) > mem_start)) {


  wl1251_debug(DEBUG_SPI, "End of partition[1] is"
        " overlapping partition[0].  Adjusted.");
  reg_size = mem_start - reg_start;
  wl1251_debug(DEBUG_SPI, "mem_start %08X mem_size %08X",
        mem_start, mem_size);
  wl1251_debug(DEBUG_SPI, "reg_start %08X reg_size %08X",
        reg_start, reg_size);
 }

 partition[0].start = mem_start;
 partition[0].size = mem_size;
 partition[1].start = reg_start;
 partition[1].size = reg_size;

 wl->physical_mem_addr = mem_start;
 wl->physical_reg_addr = reg_start;

 wl->virtual_mem_addr = 0;
 wl->virtual_reg_addr = mem_size;

 wl->if_ops->write(wl, HW_ACCESS_PART0_SIZE_ADDR, partition,
  sizeof(partition));
}
