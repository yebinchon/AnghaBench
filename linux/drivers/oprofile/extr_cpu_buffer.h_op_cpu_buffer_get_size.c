
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_entry {int size; } ;



__attribute__((used)) static inline
int op_cpu_buffer_get_size(struct op_entry *entry)
{
 return entry->size;
}
