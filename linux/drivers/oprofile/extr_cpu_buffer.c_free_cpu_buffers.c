
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * op_ring_buffer ;
 int ring_buffer_free (int *) ;

void free_cpu_buffers(void)
{
 if (op_ring_buffer)
  ring_buffer_free(op_ring_buffer);
 op_ring_buffer = ((void*)0);
}
