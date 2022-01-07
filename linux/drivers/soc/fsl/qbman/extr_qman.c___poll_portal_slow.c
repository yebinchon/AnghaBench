
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int mr_work; int p; int congestion_work; } ;


 int QM_PIRQ_CSCI ;
 int QM_PIRQ_EQRI ;
 int QM_PIRQ_MRI ;
 int affine_queue ;
 int qm_eqcr_cce_update (int *) ;
 int qm_eqcr_set_ithresh (int *,int ) ;
 int qm_portal_wq ;
 int qman_p_irqsource_remove (struct qman_portal*,int) ;
 int queue_work_on (int ,int ,int *) ;
 int smp_processor_id () ;
 int wake_up (int *) ;

__attribute__((used)) static u32 __poll_portal_slow(struct qman_portal *p, u32 is)
{
 if (is & QM_PIRQ_CSCI) {
  qman_p_irqsource_remove(p, QM_PIRQ_CSCI);
  queue_work_on(smp_processor_id(), qm_portal_wq,
         &p->congestion_work);
 }

 if (is & QM_PIRQ_EQRI) {
  qm_eqcr_cce_update(&p->p);
  qm_eqcr_set_ithresh(&p->p, 0);
  wake_up(&affine_queue);
 }

 if (is & QM_PIRQ_MRI) {
  qman_p_irqsource_remove(p, QM_PIRQ_MRI);
  queue_work_on(smp_processor_id(), qm_portal_wq,
         &p->mr_work);
 }

 return is;
}
