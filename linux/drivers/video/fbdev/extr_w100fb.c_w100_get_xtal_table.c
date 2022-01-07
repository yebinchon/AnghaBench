
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100_pll_info {int dummy; } ;
struct pll_entries {int xtal_freq; struct w100_pll_info* pll_table; } ;


 struct pll_entries* w100_pll_tables ;

struct w100_pll_info *w100_get_xtal_table(unsigned int freq)
{
 struct pll_entries *pll_entry = w100_pll_tables;

 do {
  if (freq == pll_entry->xtal_freq)
   return pll_entry->pll_table;
  pll_entry++;
 } while (pll_entry->xtal_freq);
 return 0;
}
