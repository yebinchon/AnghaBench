
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct gasket_page_table {int dummy; } ;


 int GASKET_EXTENDED_LVL1_SHIFT ;
 int GASKET_PAGES_PER_SUBTABLE ;

__attribute__((used)) static ulong gasket_extended_lvl1_page_idx(struct gasket_page_table *pg_tbl,
        ulong dev_addr)
{
 return (dev_addr >> GASKET_EXTENDED_LVL1_SHIFT) &
        (GASKET_PAGES_PER_SUBTABLE - 1);
}
