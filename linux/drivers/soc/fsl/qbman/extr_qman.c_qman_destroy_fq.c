
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_fq {int state; size_t idx; int fqid; } ;


 int DPAA_ASSERT (int) ;
 int QMAN_FQ_FLAG_DYNAMIC_FQID ;
 int fq_isset (struct qman_fq*,int ) ;
 int ** fq_table ;


 int qman_release_fqid (int ) ;

void qman_destroy_fq(struct qman_fq *fq)
{




 switch (fq->state) {
 case 128:
 case 129:
  if (fq_isset(fq, QMAN_FQ_FLAG_DYNAMIC_FQID))
   qman_release_fqid(fq->fqid);

  DPAA_ASSERT(fq_table[fq->idx]);
  fq_table[fq->idx] = ((void*)0);
  return;
 default:
  break;
 }
 DPAA_ASSERT(((void*)0) == "qman_free_fq() on unquiesced FQ!");
}
