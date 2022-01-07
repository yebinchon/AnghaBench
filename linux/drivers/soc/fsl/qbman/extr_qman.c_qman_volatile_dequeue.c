
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int dummy; } ;
struct qman_fq {scalar_t__ state; int fqid; } ;


 int EBUSY ;
 int EINVAL ;
 int QMAN_FQ_STATE_VDQCR ;
 int QMAN_VOLATILE_FLAG_FINISH ;
 int QMAN_VOLATILE_FLAG_WAIT ;
 int QMAN_VOLATILE_FLAG_WAIT_INT ;
 int QM_VDQCR_FQID_MASK ;
 int affine_queue ;
 scalar_t__ fq_isset (struct qman_fq*,int ) ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_retired ;
 int set_vdqcr (struct qman_portal**,struct qman_fq*,int) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible (int ,int) ;
 int wait_vdqcr_start (struct qman_portal**,struct qman_fq*,int,int) ;

int qman_volatile_dequeue(struct qman_fq *fq, u32 flags, u32 vdqcr)
{
 struct qman_portal *p;
 int ret;

 if (fq->state != qman_fq_state_parked &&
     fq->state != qman_fq_state_retired)
  return -EINVAL;
 if (vdqcr & QM_VDQCR_FQID_MASK)
  return -EINVAL;
 if (fq_isset(fq, QMAN_FQ_STATE_VDQCR))
  return -EBUSY;
 vdqcr = (vdqcr & ~QM_VDQCR_FQID_MASK) | fq->fqid;
 if (flags & QMAN_VOLATILE_FLAG_WAIT)
  ret = wait_vdqcr_start(&p, fq, vdqcr, flags);
 else
  ret = set_vdqcr(&p, fq, vdqcr);
 if (ret)
  return ret;

 if (flags & QMAN_VOLATILE_FLAG_FINISH) {
  if (flags & QMAN_VOLATILE_FLAG_WAIT_INT)






   wait_event_interruptible(affine_queue,
    !fq_isset(fq, QMAN_FQ_STATE_VDQCR));
  else
   wait_event(affine_queue,
    !fq_isset(fq, QMAN_FQ_STATE_VDQCR));
 }
 return 0;
}
