
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_phase_table_entry {int phase; } ;


 struct ahc_phase_table_entry* ahc_phase_table ;
 size_t num_phases ;

__attribute__((used)) static const struct ahc_phase_table_entry*
ahc_lookup_phase_entry(int phase)
{
 const struct ahc_phase_table_entry *entry;
 const struct ahc_phase_table_entry *last_entry;





 last_entry = &ahc_phase_table[num_phases];
 for (entry = ahc_phase_table; entry < last_entry; entry++) {
  if (phase == entry->phase)
   break;
 }
 return (entry);
}
