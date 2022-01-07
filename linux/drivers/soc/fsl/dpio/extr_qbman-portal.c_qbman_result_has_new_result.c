
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int available; struct dpaa2_dq const* storage; } ;
struct qbman_swp {TYPE_2__ vdq; } ;
struct TYPE_3__ {scalar_t__ tok; } ;
struct dpaa2_dq {TYPE_1__ dq; } ;


 scalar_t__ QMAN_DQ_TOKEN_VALID ;
 int atomic_inc (int *) ;

int qbman_result_has_new_result(struct qbman_swp *s, const struct dpaa2_dq *dq)
{
 if (dq->dq.tok != QMAN_DQ_TOKEN_VALID)
  return 0;






 ((struct dpaa2_dq *)dq)->dq.tok = 0;






 if (s->vdq.storage == dq) {
  s->vdq.storage = ((void*)0);
  atomic_inc(&s->vdq.available);
 }

 return 1;
}
