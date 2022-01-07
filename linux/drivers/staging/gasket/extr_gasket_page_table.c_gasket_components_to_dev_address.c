
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint ;
struct gasket_page_table {int extended_flag; } ;


 int GASKET_SIMPLE_PAGE_SHIFT ;

__attribute__((used)) static ulong gasket_components_to_dev_address(struct gasket_page_table *pg_tbl,
           int is_simple, uint page_index,
           uint offset)
{
 ulong dev_addr = (page_index << GASKET_SIMPLE_PAGE_SHIFT) | offset;

 return is_simple ? dev_addr : (pg_tbl->extended_flag | dev_addr);
}
