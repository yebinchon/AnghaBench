
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct gasket_page_table {int num_active_pages; } ;



uint gasket_page_table_num_active_pages(struct gasket_page_table *pg_tbl)
{
 if (!pg_tbl)
  return 0;
 return pg_tbl->num_active_pages;
}
