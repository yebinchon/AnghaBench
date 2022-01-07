
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint ;
struct gasket_page_table {int mutex; } ;


 scalar_t__ gasket_addr_is_simple (struct gasket_page_table*,int ) ;
 int gasket_map_extended_pages (struct gasket_page_table*,int ,int ,int ) ;
 int gasket_map_simple_pages (struct gasket_page_table*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int gasket_page_table_map(struct gasket_page_table *pg_tbl, ulong host_addr,
     ulong dev_addr, uint num_pages)
{
 int ret;

 if (!num_pages)
  return 0;

 mutex_lock(&pg_tbl->mutex);

 if (gasket_addr_is_simple(pg_tbl, dev_addr)) {
  ret = gasket_map_simple_pages(pg_tbl, host_addr, dev_addr,
           num_pages);
 } else {
  ret = gasket_map_extended_pages(pg_tbl, host_addr, dev_addr,
      num_pages);
 }

 mutex_unlock(&pg_tbl->mutex);
 return ret;
}
