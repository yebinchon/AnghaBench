
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qman_portal {int p; struct qman_fq* vdqcr_owned; } ;
struct TYPE_2__ {int (* dqrr ) (struct qman_portal*,struct qman_fq*,struct qm_dqrr_entry const*) ;} ;
struct qman_fq {TYPE_1__ cb; } ;
struct qm_dqrr_entry {int stat; int context_b; } ;
typedef enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;


 int DPAA_ASSERT (int) ;
 int QMAN_FQ_STATE_NE ;
 int QM_DQRR_STAT_DQCR_EXPIRED ;
 int QM_DQRR_STAT_FQ_EMPTY ;
 int QM_DQRR_STAT_FQ_HELDACTIVE ;
 int QM_DQRR_STAT_UNSCHEDULED ;
 int be32_to_cpu (int ) ;
 int clear_vdqcr (struct qman_portal*,struct qman_fq*) ;
 int fq_clear (struct qman_fq*,int ) ;
 int qm_dqrr_cdc_consume_1ptr (int *,struct qm_dqrr_entry const*,int) ;
 struct qm_dqrr_entry* qm_dqrr_current (int *) ;
 int qm_dqrr_next (int *) ;
 int qm_dqrr_pvb_update (int *) ;
 int qman_cb_dqrr_consume_stop ;
 int qman_cb_dqrr_defer ;
 int qman_cb_dqrr_park ;
 int qman_cb_dqrr_stop ;
 int stub1 (struct qman_portal*,struct qman_fq*,struct qm_dqrr_entry const*) ;
 int stub2 (struct qman_portal*,struct qman_fq*,struct qm_dqrr_entry const*) ;
 struct qman_fq* tag_to_fq (int ) ;

__attribute__((used)) static inline unsigned int __poll_portal_fast(struct qman_portal *p,
     unsigned int poll_limit)
{
 const struct qm_dqrr_entry *dq;
 struct qman_fq *fq;
 enum qman_cb_dqrr_result res;
 unsigned int limit = 0;

 do {
  qm_dqrr_pvb_update(&p->p);
  dq = qm_dqrr_current(&p->p);
  if (!dq)
   break;

  if (dq->stat & QM_DQRR_STAT_UNSCHEDULED) {





   fq = p->vdqcr_owned;






   if (dq->stat & QM_DQRR_STAT_FQ_EMPTY)
    fq_clear(fq, QMAN_FQ_STATE_NE);






   res = fq->cb.dqrr(p, fq, dq);
   if (res == qman_cb_dqrr_stop)
    break;

   if (dq->stat & QM_DQRR_STAT_DQCR_EXPIRED)
    clear_vdqcr(p, fq);
  } else {

   fq = tag_to_fq(be32_to_cpu(dq->context_b));

   res = fq->cb.dqrr(p, fq, dq);




   if (res == qman_cb_dqrr_stop)
    break;
  }






  DPAA_ASSERT((dq->stat & QM_DQRR_STAT_FQ_HELDACTIVE) ||
       (res != qman_cb_dqrr_park));

  if (res != qman_cb_dqrr_defer)
   qm_dqrr_cdc_consume_1ptr(&p->p, dq,
       res == qman_cb_dqrr_park);

  qm_dqrr_next(&p->p);






 } while (++limit < poll_limit && res != qman_cb_dqrr_consume_stop);

 return limit;
}
