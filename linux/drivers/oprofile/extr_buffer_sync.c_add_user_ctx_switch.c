
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long pid; unsigned long tgid; } ;


 unsigned long CTX_SWITCH_CODE ;
 unsigned long CTX_TGID_CODE ;
 unsigned long ESCAPE_CODE ;
 int add_event_entry (unsigned long) ;

__attribute__((used)) static void
add_user_ctx_switch(struct task_struct const *task, unsigned long cookie)
{
 add_event_entry(ESCAPE_CODE);
 add_event_entry(CTX_SWITCH_CODE);
 add_event_entry(task->pid);
 add_event_entry(cookie);

 add_event_entry(ESCAPE_CODE);
 add_event_entry(CTX_TGID_CODE);
 add_event_entry(task->tgid);
}
