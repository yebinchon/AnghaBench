
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_entry {int event; } ;


 int op_cpu_buffer_add_data (struct op_entry*,unsigned long) ;

int oprofile_add_data(struct op_entry *entry, unsigned long val)
{
 if (!entry->event)
  return 0;
 return op_cpu_buffer_add_data(entry, val);
}
