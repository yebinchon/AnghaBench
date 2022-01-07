
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct oprofile_cpu_buffer {int dummy; } ;
struct TYPE_2__ {int (* backtrace ) (struct pt_regs* const,unsigned long) ;} ;


 int log_sample (struct oprofile_cpu_buffer*,unsigned long,unsigned long,int,unsigned long,struct task_struct*) ;
 int op_cpu_buffer ;
 unsigned long oprofile_backtrace_depth ;
 int oprofile_begin_trace (struct oprofile_cpu_buffer*) ;
 int oprofile_end_trace (struct oprofile_cpu_buffer*) ;
 TYPE_1__ oprofile_ops ;
 int stub1 (struct pt_regs* const,unsigned long) ;
 struct oprofile_cpu_buffer* this_cpu_ptr (int *) ;

__attribute__((used)) static inline void
__oprofile_add_ext_sample(unsigned long pc, struct pt_regs * const regs,
     unsigned long event, int is_kernel,
     struct task_struct *task)
{
 struct oprofile_cpu_buffer *cpu_buf = this_cpu_ptr(&op_cpu_buffer);
 unsigned long backtrace = oprofile_backtrace_depth;





 if (!log_sample(cpu_buf, pc, backtrace, is_kernel, event, task))

  return;

 if (!backtrace)
  return;

 oprofile_begin_trace(cpu_buf);
 oprofile_ops.backtrace(regs, backtrace);
 oprofile_end_trace(cpu_buf);
}
