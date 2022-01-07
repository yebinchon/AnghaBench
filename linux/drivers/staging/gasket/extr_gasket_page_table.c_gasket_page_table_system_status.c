
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_page_table {int device; } ;


 int GASKET_STATUS_ALIVE ;
 int GASKET_STATUS_LAMED ;
 int dev_dbg (int ,char*) ;
 scalar_t__ gasket_page_table_num_entries (struct gasket_page_table*) ;

int gasket_page_table_system_status(struct gasket_page_table *page_table)
{
 if (!page_table)
  return GASKET_STATUS_LAMED;

 if (gasket_page_table_num_entries(page_table) == 0) {
  dev_dbg(page_table->device, "Page table size is 0\n");
  return GASKET_STATUS_LAMED;
 }

 return GASKET_STATUS_ALIVE;
}
