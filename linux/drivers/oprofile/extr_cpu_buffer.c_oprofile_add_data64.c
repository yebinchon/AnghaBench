
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct op_entry {int event; } ;


 int op_cpu_buffer_add_data (struct op_entry*,int ) ;
 int op_cpu_buffer_get_size (struct op_entry*) ;

int oprofile_add_data64(struct op_entry *entry, u64 val)
{
 if (!entry->event)
  return 0;
 if (op_cpu_buffer_get_size(entry) < 2)




  return 0;
 if (!op_cpu_buffer_add_data(entry, (u32)val))
  return 0;
 return op_cpu_buffer_add_data(entry, (u32)(val >> 32));
}
