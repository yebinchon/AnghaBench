
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_page_table {int num_extended_entries; int num_simple_entries; } ;


 int GASKET_PAGES_PER_SUBTABLE ;
 int gasket_components_to_dev_address (struct gasket_page_table*,int,int ,int ) ;
 int gasket_unmap_extended_pages (struct gasket_page_table*,int ,int) ;
 int gasket_unmap_simple_pages (struct gasket_page_table*,int ,int ) ;

__attribute__((used)) static void gasket_page_table_unmap_all_nolock(struct gasket_page_table *pg_tbl)
{
 gasket_unmap_simple_pages(pg_tbl,
      gasket_components_to_dev_address(pg_tbl, 1, 0,
           0),
      pg_tbl->num_simple_entries);
 gasket_unmap_extended_pages(pg_tbl,
        gasket_components_to_dev_address(pg_tbl, 0,
             0, 0),
        pg_tbl->num_extended_entries *
        GASKET_PAGES_PER_SUBTABLE);
}
