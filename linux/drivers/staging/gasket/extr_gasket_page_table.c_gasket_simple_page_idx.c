
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int total_entries; } ;
struct gasket_page_table {TYPE_1__ config; } ;


 int GASKET_SIMPLE_PAGE_SHIFT ;

__attribute__((used)) static int gasket_simple_page_idx(struct gasket_page_table *pg_tbl,
      ulong dev_addr)
{
 return (dev_addr >> GASKET_SIMPLE_PAGE_SHIFT) &
  (pg_tbl->config.total_entries - 1);
}
