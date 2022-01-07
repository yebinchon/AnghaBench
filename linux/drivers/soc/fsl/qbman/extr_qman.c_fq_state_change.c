
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fqs; } ;
union qm_mr_entry {TYPE_1__ fq; } ;
typedef int u8 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int state; } ;


 int DPAA_ASSERT (int) ;
 int QMAN_FQ_STATE_CHANGING ;
 int QMAN_FQ_STATE_NE ;
 int QMAN_FQ_STATE_ORL ;
 int QM_MR_FQS_NOTEMPTY ;
 int QM_MR_FQS_ORLPRESENT ;



 int fq_clear (struct qman_fq*,int ) ;
 int fq_isclear (struct qman_fq*,int ) ;
 int fq_isset (struct qman_fq*,int ) ;
 int fq_set (struct qman_fq*,int ) ;
 int qman_fq_state_parked ;
 int qman_fq_state_retired ;
 int qman_fq_state_sched ;

__attribute__((used)) static inline void fq_state_change(struct qman_portal *p, struct qman_fq *fq,
       const union qm_mr_entry *msg, u8 verb)
{
 switch (verb) {
 case 129:
  DPAA_ASSERT(fq_isset(fq, QMAN_FQ_STATE_ORL));
  fq_clear(fq, QMAN_FQ_STATE_ORL);
  break;
 case 128:
  DPAA_ASSERT(fq->state == qman_fq_state_parked ||
       fq->state == qman_fq_state_sched);
  DPAA_ASSERT(fq_isset(fq, QMAN_FQ_STATE_CHANGING));
  fq_clear(fq, QMAN_FQ_STATE_CHANGING);
  if (msg->fq.fqs & QM_MR_FQS_NOTEMPTY)
   fq_set(fq, QMAN_FQ_STATE_NE);
  if (msg->fq.fqs & QM_MR_FQS_ORLPRESENT)
   fq_set(fq, QMAN_FQ_STATE_ORL);
  fq->state = qman_fq_state_retired;
  break;
 case 130:
  DPAA_ASSERT(fq->state == qman_fq_state_sched);
  DPAA_ASSERT(fq_isclear(fq, QMAN_FQ_STATE_CHANGING));
  fq->state = qman_fq_state_parked;
 }
}
