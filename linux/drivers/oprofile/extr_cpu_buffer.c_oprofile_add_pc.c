
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_cpu_buffer {int dummy; } ;


 int log_sample (struct oprofile_cpu_buffer*,unsigned long,int ,int,unsigned long,int *) ;
 int op_cpu_buffer ;
 struct oprofile_cpu_buffer* this_cpu_ptr (int *) ;

void oprofile_add_pc(unsigned long pc, int is_kernel, unsigned long event)
{
 struct oprofile_cpu_buffer *cpu_buf = this_cpu_ptr(&op_cpu_buffer);
 log_sample(cpu_buf, pc, 0, is_kernel, event, ((void*)0));
}
