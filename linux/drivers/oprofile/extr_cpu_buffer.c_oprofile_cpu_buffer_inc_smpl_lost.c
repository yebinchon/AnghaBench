
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_cpu_buffer {int sample_lost_overflow; } ;


 int op_cpu_buffer ;
 struct oprofile_cpu_buffer* this_cpu_ptr (int *) ;

void oprofile_cpu_buffer_inc_smpl_lost(void)
{
 struct oprofile_cpu_buffer *cpu_buf = this_cpu_ptr(&op_cpu_buffer);

 cpu_buf->sample_lost_overflow++;
}
