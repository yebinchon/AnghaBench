
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sync_buffer_state ;
struct task_struct {int dummy; } ;
struct op_sample {unsigned long event; int eip; } ;
struct op_entry {int dummy; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int bt_lost_no_mapping; } ;


 unsigned long IS_KERNEL ;
 unsigned long KERNEL_CTX_SWITCH ;
 unsigned long TRACE_BEGIN ;
 unsigned long USER_CTX_SWITCH ;
 int add_cpu_switch (int) ;
 int add_data (struct op_entry*,struct mm_struct*) ;
 int add_kernel_ctx_switch (unsigned long) ;
 scalar_t__ add_sample (struct mm_struct*,struct op_sample*,int) ;
 int add_trace_begin () ;
 int add_user_ctx_switch (struct task_struct*,unsigned long) ;
 int atomic_inc (int *) ;
 int buffer_mutex ;
 unsigned long get_exec_dcookie (struct mm_struct*) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 scalar_t__ is_code (int ) ;
 int mark_done (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long op_cpu_buffer_entries (int) ;
 scalar_t__ op_cpu_buffer_get_data (struct op_entry*,unsigned long*) ;
 scalar_t__ op_cpu_buffer_get_size (struct op_entry*) ;
 struct op_sample* op_cpu_buffer_read_entry (struct op_entry*,int) ;
 int op_cpu_buffer_reset (int) ;
 TYPE_1__ oprofile_stats ;
 int release_mm (struct mm_struct*) ;
 scalar_t__ sb_bt_ignore ;
 scalar_t__ sb_bt_start ;
 scalar_t__ sb_buffer_start ;
 scalar_t__ sb_sample_start ;

void sync_buffer(int cpu)
{
 struct mm_struct *mm = ((void*)0);
 struct mm_struct *oldmm;
 unsigned long val;
 struct task_struct *new;
 unsigned long cookie = 0;
 int in_kernel = 1;
 sync_buffer_state state = sb_buffer_start;
 unsigned int i;
 unsigned long available;
 unsigned long flags;
 struct op_entry entry;
 struct op_sample *sample;

 mutex_lock(&buffer_mutex);

 add_cpu_switch(cpu);

 op_cpu_buffer_reset(cpu);
 available = op_cpu_buffer_entries(cpu);

 for (i = 0; i < available; ++i) {
  sample = op_cpu_buffer_read_entry(&entry, cpu);
  if (!sample)
   break;

  if (is_code(sample->eip)) {
   flags = sample->event;
   if (flags & TRACE_BEGIN) {
    state = sb_bt_start;
    add_trace_begin();
   }
   if (flags & KERNEL_CTX_SWITCH) {

    in_kernel = flags & IS_KERNEL;
    if (state == sb_buffer_start)
     state = sb_sample_start;
    add_kernel_ctx_switch(flags & IS_KERNEL);
   }
   if (flags & USER_CTX_SWITCH
       && op_cpu_buffer_get_data(&entry, &val)) {

    new = (struct task_struct *)val;
    oldmm = mm;
    release_mm(oldmm);
    mm = get_task_mm(new);
    if (mm != oldmm)
     cookie = get_exec_dcookie(mm);
    add_user_ctx_switch(new, cookie);
   }
   if (op_cpu_buffer_get_size(&entry))
    add_data(&entry, mm);
   continue;
  }

  if (state < sb_bt_start)

   continue;

  if (add_sample(mm, sample, in_kernel))
   continue;


  if (state == sb_bt_start) {
   state = sb_bt_ignore;
   atomic_inc(&oprofile_stats.bt_lost_no_mapping);
  }
 }
 release_mm(mm);

 mark_done(cpu);

 mutex_unlock(&buffer_mutex);
}
