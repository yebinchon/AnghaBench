
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef scalar_t__ uint ;
struct gasket_page_table {int device; } ;


 int PAGE_SIZE ;
 int dev_err (int ,char*,int,...) ;
 scalar_t__ gasket_addr_is_simple (struct gasket_page_table*,int) ;
 int gasket_is_extended_dev_addr_bad (struct gasket_page_table*,int,scalar_t__) ;
 int gasket_is_simple_dev_addr_bad (struct gasket_page_table*,int,scalar_t__) ;

bool gasket_page_table_is_dev_addr_bad(struct gasket_page_table *pg_tbl,
           ulong dev_addr, ulong bytes)
{
 uint num_pages = bytes / PAGE_SIZE;

 if (bytes & (PAGE_SIZE - 1)) {
  dev_err(pg_tbl->device,
   "mapping size 0x%lX must be page aligned\n", bytes);
  return 1;
 }

 if (num_pages == 0) {
  dev_err(pg_tbl->device,
   "requested mapping is less than one page: %lu / %lu\n",
   bytes, PAGE_SIZE);
  return 1;
 }

 if (gasket_addr_is_simple(pg_tbl, dev_addr))
  return gasket_is_simple_dev_addr_bad(pg_tbl, dev_addr,
           num_pages);
 return gasket_is_extended_dev_addr_bad(pg_tbl, dev_addr, num_pages);
}
