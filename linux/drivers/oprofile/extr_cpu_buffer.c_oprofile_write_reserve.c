
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct oprofile_cpu_buffer {int sample_lost_overflow; int sample_received; } ;
struct op_sample {scalar_t__ event; int eip; } ;
struct op_entry {int * event; } ;


 int ESCAPE_CODE ;
 int current ;
 scalar_t__ op_add_code (struct oprofile_cpu_buffer*,int ,int,int ) ;
 int op_cpu_buffer ;
 int op_cpu_buffer_add_data (struct op_entry*,unsigned long) ;
 struct op_sample* op_cpu_buffer_write_reserve (struct op_entry*,int) ;
 struct oprofile_cpu_buffer* this_cpu_ptr (int *) ;
 int user_mode (struct pt_regs* const) ;

void
oprofile_write_reserve(struct op_entry *entry, struct pt_regs * const regs,
         unsigned long pc, int code, int size)
{
 struct op_sample *sample;
 int is_kernel = !user_mode(regs);
 struct oprofile_cpu_buffer *cpu_buf = this_cpu_ptr(&op_cpu_buffer);

 cpu_buf->sample_received++;


 if (op_add_code(cpu_buf, 0, is_kernel, current))
  goto fail;

 sample = op_cpu_buffer_write_reserve(entry, size + 2);
 if (!sample)
  goto fail;
 sample->eip = ESCAPE_CODE;
 sample->event = 0;

 op_cpu_buffer_add_data(entry, code);
 op_cpu_buffer_add_data(entry, pc);

 return;

fail:
 entry->event = ((void*)0);
 cpu_buf->sample_lost_overflow++;
}
