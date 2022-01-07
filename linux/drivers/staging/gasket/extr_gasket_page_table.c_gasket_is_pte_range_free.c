
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct gasket_page_table_entry {scalar_t__ status; } ;


 scalar_t__ PTE_FREE ;

__attribute__((used)) static bool gasket_is_pte_range_free(struct gasket_page_table_entry *ptes,
         uint num_entries)
{
 int i;

 for (i = 0; i < num_entries; i++) {
  if (ptes[i].status != PTE_FREE)
   return 0;
 }

 return 1;
}
