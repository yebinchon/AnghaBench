
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct qcom_wcnss {scalar_t__ ready_irq; int iris_lock; int vregs; int num_vregs; int iris; int dev; int start_done; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int WCNSS_PAS_ID ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qcom_iris_disable (int ) ;
 int qcom_iris_enable (int ) ;
 int qcom_scm_pas_auth_and_reset (int ) ;
 int qcom_scm_pas_shutdown (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;
 int wcnss_configure_iris (struct qcom_wcnss*) ;
 int wcnss_indicate_nv_download (struct qcom_wcnss*) ;

__attribute__((used)) static int wcnss_start(struct rproc *rproc)
{
 struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
 int ret;

 mutex_lock(&wcnss->iris_lock);
 if (!wcnss->iris) {
  dev_err(wcnss->dev, "no iris registered\n");
  ret = -EINVAL;
  goto release_iris_lock;
 }

 ret = regulator_bulk_enable(wcnss->num_vregs, wcnss->vregs);
 if (ret)
  goto release_iris_lock;

 ret = qcom_iris_enable(wcnss->iris);
 if (ret)
  goto disable_regulators;

 wcnss_indicate_nv_download(wcnss);
 wcnss_configure_iris(wcnss);

 ret = qcom_scm_pas_auth_and_reset(WCNSS_PAS_ID);
 if (ret) {
  dev_err(wcnss->dev,
   "failed to authenticate image and release reset\n");
  goto disable_iris;
 }

 ret = wait_for_completion_timeout(&wcnss->start_done,
       msecs_to_jiffies(5000));
 if (wcnss->ready_irq > 0 && ret == 0) {

  dev_err(wcnss->dev, "start timed out\n");
  qcom_scm_pas_shutdown(WCNSS_PAS_ID);
  ret = -ETIMEDOUT;
  goto disable_iris;
 }

 ret = 0;

disable_iris:
 qcom_iris_disable(wcnss->iris);
disable_regulators:
 regulator_bulk_disable(wcnss->num_vregs, wcnss->vregs);
release_iris_lock:
 mutex_unlock(&wcnss->iris_lock);

 return ret;
}
