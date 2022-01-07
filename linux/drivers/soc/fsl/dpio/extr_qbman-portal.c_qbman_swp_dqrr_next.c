
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int next_idx; int dqrr_size; int valid_bit; scalar_t__ reset_bug; } ;
struct TYPE_7__ {int available; } ;
struct qbman_swp {TYPE_4__ dqrr; TYPE_3__ vdq; TYPE_1__* desc; } ;
struct TYPE_6__ {int verb; int stat; } ;
typedef struct dpaa2_dq {TYPE_2__ dq; } const dpaa2_dq ;
struct TYPE_5__ {int qman_version; } ;


 int DPAA2_DQ_STAT_EXPIRED ;
 int DPAA2_DQ_STAT_VOLATILE ;
 int QBMAN_CENA_SWP_DQRR (int) ;
 int QBMAN_CENA_SWP_DQRR_MEM (int) ;
 int QBMAN_CINH_SWP_DQPI ;
 int QBMAN_RESULT_DQ ;
 int QBMAN_RESULT_MASK ;
 int QB_VALID_BIT ;
 int QMAN_DQRR_PI_MASK ;
 int QMAN_REV_5000 ;
 int QMAN_REV_MASK ;
 int atomic_inc (int *) ;
 int pr_debug (char*,int,int) ;
 int prefetch (struct dpaa2_dq const*) ;
 struct dpaa2_dq const* qbman_get_cmd (struct qbman_swp*,int ) ;
 int qbman_read_register (struct qbman_swp*,int ) ;
 scalar_t__ unlikely (scalar_t__) ;

const struct dpaa2_dq *qbman_swp_dqrr_next(struct qbman_swp *s)
{
 u32 verb;
 u32 response_verb;
 u32 flags;
 struct dpaa2_dq *p;




 if (unlikely(s->dqrr.reset_bug)) {
  u8 pi = qbman_read_register(s, QBMAN_CINH_SWP_DQPI) &
   QMAN_DQRR_PI_MASK;


  if (pi == s->dqrr.next_idx)
   return ((void*)0);
  if (s->dqrr.next_idx == (s->dqrr.dqrr_size - 1)) {
   pr_debug("next_idx=%d, pi=%d, clear reset bug\n",
     s->dqrr.next_idx, pi);
   s->dqrr.reset_bug = 0;
  }
  prefetch(qbman_get_cmd(s,
           QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));
 }

 if ((s->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
  p = qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx));
 else
  p = qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR_MEM(s->dqrr.next_idx));
 verb = p->dq.verb;
 if ((verb & QB_VALID_BIT) != s->dqrr.valid_bit) {
  prefetch(qbman_get_cmd(s,
           QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));
  return ((void*)0);
 }




 s->dqrr.next_idx++;
 s->dqrr.next_idx &= s->dqrr.dqrr_size - 1;
 if (!s->dqrr.next_idx)
  s->dqrr.valid_bit ^= QB_VALID_BIT;





 flags = p->dq.stat;
 response_verb = verb & QBMAN_RESULT_MASK;
 if ((response_verb == QBMAN_RESULT_DQ) &&
     (flags & DPAA2_DQ_STAT_VOLATILE) &&
     (flags & DPAA2_DQ_STAT_EXPIRED))
  atomic_inc(&s->vdq.available);

 prefetch(qbman_get_cmd(s, QBMAN_CENA_SWP_DQRR(s->dqrr.next_idx)));

 return p;
}
