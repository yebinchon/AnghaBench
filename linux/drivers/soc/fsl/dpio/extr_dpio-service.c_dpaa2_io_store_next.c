
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_io_store {size_t idx; struct dpaa2_dq* vaddr; int swp; } ;
struct dpaa2_dq {int dummy; } ;


 int DPAA2_DQ_STAT_VALIDFRAME ;
 int dpaa2_dq_flags (struct dpaa2_dq*) ;
 scalar_t__ dpaa2_dq_is_pull_complete (struct dpaa2_dq*) ;
 int prefetch (struct dpaa2_dq*) ;
 int qbman_result_has_new_result (int ,struct dpaa2_dq*) ;

struct dpaa2_dq *dpaa2_io_store_next(struct dpaa2_io_store *s, int *is_last)
{
 int match;
 struct dpaa2_dq *ret = &s->vaddr[s->idx];

 match = qbman_result_has_new_result(s->swp, ret);
 if (!match) {
  *is_last = 0;
  return ((void*)0);
 }

 s->idx++;

 if (dpaa2_dq_is_pull_complete(ret)) {
  *is_last = 1;
  s->idx = 0;





  if (!(dpaa2_dq_flags(ret) & DPAA2_DQ_STAT_VALIDFRAME))
   ret = ((void*)0);
 } else {
  prefetch(&s->vaddr[s->idx]);
  *is_last = 0;
 }

 return ret;
}
