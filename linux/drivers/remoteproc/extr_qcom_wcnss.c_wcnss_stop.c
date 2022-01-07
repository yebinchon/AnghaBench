
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct qcom_wcnss {int dev; int stop_bit; scalar_t__ state; int stop_done; } ;


 int BIT (int ) ;
 int WCNSS_PAS_ID ;
 int dev_err (int ,char*,...) ;
 int msecs_to_jiffies (int) ;
 int qcom_scm_pas_shutdown (int ) ;
 int qcom_smem_state_update_bits (scalar_t__,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wcnss_stop(struct rproc *rproc)
{
 struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
 int ret;

 if (wcnss->state) {
  qcom_smem_state_update_bits(wcnss->state,
         BIT(wcnss->stop_bit),
         BIT(wcnss->stop_bit));

  ret = wait_for_completion_timeout(&wcnss->stop_done,
        msecs_to_jiffies(5000));
  if (ret == 0)
   dev_err(wcnss->dev, "timed out on wait\n");

  qcom_smem_state_update_bits(wcnss->state,
         BIT(wcnss->stop_bit),
         0);
 }

 ret = qcom_scm_pas_shutdown(WCNSS_PAS_ID);
 if (ret)
  dev_err(wcnss->dev, "failed to shutdown: %d\n", ret);

 return ret;
}
