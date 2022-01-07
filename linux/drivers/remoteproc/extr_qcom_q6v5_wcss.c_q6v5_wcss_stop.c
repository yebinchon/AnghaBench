
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int q6v5; int dev; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int q6v5_q6_powerdown (struct q6v5_wcss*) ;
 int q6v5_wcss_powerdown (struct q6v5_wcss*) ;
 int qcom_q6v5_request_stop (int *) ;
 int qcom_q6v5_unprepare (int *) ;

__attribute__((used)) static int q6v5_wcss_stop(struct rproc *rproc)
{
 struct q6v5_wcss *wcss = rproc->priv;
 int ret;


 ret = qcom_q6v5_request_stop(&wcss->q6v5);
 if (ret == -ETIMEDOUT) {
  dev_err(wcss->dev, "timed out on wait\n");
  return ret;
 }

 ret = q6v5_wcss_powerdown(wcss);
 if (ret)
  return ret;


 ret = q6v5_q6_powerdown(wcss);
 if (ret)
  return ret;

 qcom_q6v5_unprepare(&wcss->q6v5);

 return 0;
}
