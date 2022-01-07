
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_entry {int event; } ;


 int op_ring_buffer ;
 int ring_buffer_unlock_commit (int ,int ) ;

int op_cpu_buffer_write_commit(struct op_entry *entry)
{
 return ring_buffer_unlock_commit(op_ring_buffer, entry->event);
}
