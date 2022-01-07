
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct q6v5 {int running; int dev; int q6v5; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int q6v5_mba_reclaim (struct q6v5*) ;
 int qcom_q6v5_request_stop (int *) ;

__attribute__((used)) static int q6v5_stop(struct rproc *rproc)
{
 struct q6v5 *qproc = (struct q6v5 *)rproc->priv;
 int ret;

 qproc->running = 0;

 ret = qcom_q6v5_request_stop(&qproc->q6v5);
 if (ret == -ETIMEDOUT)
  dev_err(qproc->dev, "timed out on wait\n");

 q6v5_mba_reclaim(qproc);

 return 0;
}
