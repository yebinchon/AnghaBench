
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_cgr {size_t cgrid; } ;


 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__* qman_cgr_cpus ;
 int qman_delete_cgr (struct qman_cgr*) ;
 int qman_delete_cgr_smp_call ;
 int smp_call_function_single (scalar_t__,int ,struct qman_cgr*,int) ;
 scalar_t__ smp_processor_id () ;

void qman_delete_cgr_safe(struct qman_cgr *cgr)
{
 preempt_disable();
 if (qman_cgr_cpus[cgr->cgrid] != smp_processor_id()) {
  smp_call_function_single(qman_cgr_cpus[cgr->cgrid],
      qman_delete_cgr_smp_call, cgr, 1);
  preempt_enable();
  return;
 }

 qman_delete_cgr(cgr);
 preempt_enable();
}
