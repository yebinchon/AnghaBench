
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_cpu_buffer {int backtrace_aborted; scalar_t__ tracing; } ;


 unsigned long ESCAPE_CODE ;
 scalar_t__ op_add_sample (struct oprofile_cpu_buffer*,unsigned long,int ) ;
 int op_cpu_buffer ;
 struct oprofile_cpu_buffer* this_cpu_ptr (int *) ;

void oprofile_add_trace(unsigned long pc)
{
 struct oprofile_cpu_buffer *cpu_buf = this_cpu_ptr(&op_cpu_buffer);

 if (!cpu_buf->tracing)
  return;





 if (pc == ESCAPE_CODE)
  goto fail;

 if (op_add_sample(cpu_buf, pc, 0))
  goto fail;

 return;
fail:
 cpu_buf->tracing = 0;
 cpu_buf->backtrace_aborted++;
 return;
}
