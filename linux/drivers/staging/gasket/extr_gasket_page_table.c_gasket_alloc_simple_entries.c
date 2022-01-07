
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint ;
struct gasket_page_table {scalar_t__ entries; } ;


 int EBUSY ;
 int gasket_is_pte_range_free (scalar_t__,int ) ;
 scalar_t__ gasket_simple_page_idx (struct gasket_page_table*,int ) ;

__attribute__((used)) static int gasket_alloc_simple_entries(struct gasket_page_table *pg_tbl,
           ulong dev_addr, uint num_pages)
{
 if (!gasket_is_pte_range_free(pg_tbl->entries +
          gasket_simple_page_idx(pg_tbl, dev_addr),
          num_pages))
  return -EBUSY;

 return 0;
}
