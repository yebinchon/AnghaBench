
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct q6v5 {int running; int mpss_size; int mpss_phys; int mpss_perm; scalar_t__ dump_segment_mask; int dev; int mba_size; int mba_phys; int mba_perm; int q6v5; } ;


 int ETIMEDOUT ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int q6v5_mba_load (struct q6v5*) ;
 int q6v5_mba_reclaim (struct q6v5*) ;
 int q6v5_mpss_load (struct q6v5*) ;
 int q6v5_xfer_mem_ownership (struct q6v5*,int *,int,int ,int ) ;
 int qcom_q6v5_wait_for_start (int *,int ) ;

__attribute__((used)) static int q6v5_start(struct rproc *rproc)
{
 struct q6v5 *qproc = (struct q6v5 *)rproc->priv;
 int xfermemop_ret;
 int ret;

 ret = q6v5_mba_load(qproc);
 if (ret)
  return ret;

 dev_info(qproc->dev, "MBA booted, loading mpss\n");

 ret = q6v5_mpss_load(qproc);
 if (ret)
  goto reclaim_mpss;

 ret = qcom_q6v5_wait_for_start(&qproc->q6v5, msecs_to_jiffies(5000));
 if (ret == -ETIMEDOUT) {
  dev_err(qproc->dev, "start timed out\n");
  goto reclaim_mpss;
 }

 xfermemop_ret = q6v5_xfer_mem_ownership(qproc, &qproc->mba_perm, 0,
      qproc->mba_phys,
      qproc->mba_size);
 if (xfermemop_ret)
  dev_err(qproc->dev,
   "Failed to reclaim mba buffer system may become unstable\n");


 qproc->dump_segment_mask = 0;
 qproc->running = 1;

 return 0;

reclaim_mpss:
 xfermemop_ret = q6v5_xfer_mem_ownership(qproc, &qproc->mpss_perm,
      0, qproc->mpss_phys,
      qproc->mpss_size);
 WARN_ON(xfermemop_ret);
 q6v5_mba_reclaim(qproc);

 return ret;
}
