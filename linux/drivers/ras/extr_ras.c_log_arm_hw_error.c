
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cper_sec_proc_arm {int dummy; } ;


 int trace_arm_event (struct cper_sec_proc_arm*) ;

void log_arm_hw_error(struct cper_sec_proc_arm *err)
{
 trace_arm_event(err);
}
