
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct TYPE_2__ {int total_entries; } ;
struct gasket_page_table {TYPE_1__ config; } ;



uint gasket_page_table_max_size(struct gasket_page_table *page_table)
{
 if (!page_table)
  return 0;
 return page_table->config.total_entries;
}
