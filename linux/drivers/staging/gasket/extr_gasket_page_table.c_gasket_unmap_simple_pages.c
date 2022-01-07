
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef scalar_t__ uint ;
struct gasket_page_table {scalar_t__ base_slot; scalar_t__ entries; } ;


 int gasket_perform_unmapping (struct gasket_page_table*,scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ gasket_simple_page_idx (struct gasket_page_table*,int ) ;

__attribute__((used)) static void gasket_unmap_simple_pages(struct gasket_page_table *pg_tbl,
          ulong dev_addr, uint num_pages)
{
 uint slot = gasket_simple_page_idx(pg_tbl, dev_addr);

 gasket_perform_unmapping(pg_tbl, pg_tbl->entries + slot,
     pg_tbl->base_slot + slot, num_pages, 1);
}
