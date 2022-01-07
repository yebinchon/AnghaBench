
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qman_fq {int fqid; } ;
struct qm_mcr_queryfq_np {int state; } ;
struct qm_fqd {int dummy; } ;


 int ERANGE ;
 int QM_FQID_RANGE_START ;
 int QM_MCR_NP_STATE_MASK ;
 int QM_MCR_NP_STATE_OOS ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ qm_fqd_get_chan (struct qm_fqd*) ;
 int qman_query_fq (struct qman_fq*,struct qm_fqd*) ;
 int qman_query_fq_np (struct qman_fq*,struct qm_mcr_queryfq_np*) ;
 int qman_shutdown_fq (int ) ;

__attribute__((used)) static int qpool_cleanup(u32 qp)
{






 struct qman_fq fq = {
  .fqid = QM_FQID_RANGE_START
 };
 int err;

 do {
  struct qm_mcr_queryfq_np np;

  err = qman_query_fq_np(&fq, &np);
  if (err == -ERANGE)

   return 0;
  else if (WARN_ON(err))
   return err;

  if ((np.state & QM_MCR_NP_STATE_MASK) != QM_MCR_NP_STATE_OOS) {
   struct qm_fqd fqd;

   err = qman_query_fq(&fq, &fqd);
   if (WARN_ON(err))
    return err;
   if (qm_fqd_get_chan(&fqd) == qp) {

    err = qman_shutdown_fq(fq.fqid);
    if (err)




     return err;
   }
  }

  fq.fqid++;
 } while (1);
}
