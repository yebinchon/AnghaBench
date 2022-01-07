
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint ;
struct gasket_page_table {int dummy; } ;


 scalar_t__ gasket_addr_is_simple (struct gasket_page_table*,int ) ;
 int gasket_unmap_extended_pages (struct gasket_page_table*,int ,int ) ;
 int gasket_unmap_simple_pages (struct gasket_page_table*,int ,int ) ;

__attribute__((used)) static void gasket_page_table_unmap_nolock(struct gasket_page_table *pg_tbl,
        ulong dev_addr, uint num_pages)
{
 if (!num_pages)
  return;

 if (gasket_addr_is_simple(pg_tbl, dev_addr))
  gasket_unmap_simple_pages(pg_tbl, dev_addr, num_pages);
 else
  gasket_unmap_extended_pages(pg_tbl, dev_addr, num_pages);
}
