
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int q6v5; int dev; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*,...) ;
 int qcom_adsp_pil_handover (int *) ;
 int qcom_adsp_shutdown (struct qcom_adsp*) ;
 int qcom_q6v5_request_stop (int *) ;
 int qcom_q6v5_unprepare (int *) ;

__attribute__((used)) static int adsp_stop(struct rproc *rproc)
{
 struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
 int handover;
 int ret;

 ret = qcom_q6v5_request_stop(&adsp->q6v5);
 if (ret == -ETIMEDOUT)
  dev_err(adsp->dev, "timed out on wait\n");

 ret = qcom_adsp_shutdown(adsp);
 if (ret)
  dev_err(adsp->dev, "failed to shutdown: %d\n", ret);

 handover = qcom_q6v5_unprepare(&adsp->q6v5);
 if (handover)
  qcom_adsp_pil_handover(&adsp->q6v5);

 return ret;
}
