
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct gasket_page_table {int device; } ;


 int PAGE_SIZE ;
 int dev_err (int ,char*,int) ;
 int gasket_page_table_is_dev_addr_bad (struct gasket_page_table*,int,int) ;

bool gasket_page_table_are_addrs_bad(struct gasket_page_table *pg_tbl,
         ulong host_addr, ulong dev_addr,
         ulong bytes)
{
 if (host_addr & (PAGE_SIZE - 1)) {
  dev_err(pg_tbl->device,
   "host mapping address 0x%lx must be page aligned\n",
   host_addr);
  return 1;
 }

 return gasket_page_table_is_dev_addr_bad(pg_tbl, dev_addr, bytes);
}
