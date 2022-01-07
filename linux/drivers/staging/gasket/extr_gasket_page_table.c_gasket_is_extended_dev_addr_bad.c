
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int uint ;
struct TYPE_2__ {int total_entries; } ;
struct gasket_page_table {int extended_flag; int num_extended_entries; int device; TYPE_1__ config; } ;


 int DIV_ROUND_UP (int ,int) ;
 int GASKET_EXTENDED_LVL0_SHIFT ;
 int GASKET_EXTENDED_LVL0_WIDTH ;
 int GASKET_PAGES_PER_SUBTABLE ;
 int PAGE_SIZE ;
 int dev_err (int ,char*,int,...) ;
 int gasket_components_to_dev_address (struct gasket_page_table*,int ,int,int) ;
 int gasket_extended_lvl0_page_idx (struct gasket_page_table*,int) ;

__attribute__((used)) static bool gasket_is_extended_dev_addr_bad(struct gasket_page_table *pg_tbl,
         ulong dev_addr, uint num_pages)
{

 ulong page_offset = dev_addr & (PAGE_SIZE - 1);
 ulong page_global_idx, page_lvl0_idx;
 ulong num_lvl0_pages;
 ulong addr;


 addr = dev_addr & ~((pg_tbl)->extended_flag);
 if (addr >> (GASKET_EXTENDED_LVL0_WIDTH + GASKET_EXTENDED_LVL0_SHIFT)) {
  dev_err(pg_tbl->device, "device address out of bounds: 0x%lx\n",
   dev_addr);
  return 1;
 }


 page_global_idx = (dev_addr / PAGE_SIZE) &
  (pg_tbl->config.total_entries * GASKET_PAGES_PER_SUBTABLE - 1);


 page_lvl0_idx = gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);


 num_lvl0_pages = DIV_ROUND_UP(num_pages, GASKET_PAGES_PER_SUBTABLE);

 if (gasket_components_to_dev_address(pg_tbl, 0, page_global_idx,
          page_offset) != dev_addr) {
  dev_err(pg_tbl->device, "address is invalid: 0x%lx\n",
   dev_addr);
  return 1;
 }

 if (page_lvl0_idx >= pg_tbl->num_extended_entries) {
  dev_err(pg_tbl->device,
   "starting level 0 slot at %lu is too large, max is < %u\n",
   page_lvl0_idx, pg_tbl->num_extended_entries);
  return 1;
 }

 if (page_lvl0_idx + num_lvl0_pages > pg_tbl->num_extended_entries) {
  dev_err(pg_tbl->device,
   "ending level 0 slot at %lu is too large, max is <= %u\n",
   page_lvl0_idx + num_lvl0_pages,
   pg_tbl->num_extended_entries);
  return 1;
 }

 return 0;
}
