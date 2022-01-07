
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int xo; int aggre2_clk; int cx_supply; int px_supply; int pas_id; int dev; int q6v5; } ;


 int ETIMEDOUT ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int qcom_q6v5_prepare (int *) ;
 int qcom_q6v5_wait_for_start (int *,int ) ;
 int qcom_scm_pas_auth_and_reset (int ) ;
 int qcom_scm_pas_shutdown (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int adsp_start(struct rproc *rproc)
{
 struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
 int ret;

 qcom_q6v5_prepare(&adsp->q6v5);

 ret = clk_prepare_enable(adsp->xo);
 if (ret)
  return ret;

 ret = clk_prepare_enable(adsp->aggre2_clk);
 if (ret)
  goto disable_xo_clk;

 ret = regulator_enable(adsp->cx_supply);
 if (ret)
  goto disable_aggre2_clk;

 ret = regulator_enable(adsp->px_supply);
 if (ret)
  goto disable_cx_supply;

 ret = qcom_scm_pas_auth_and_reset(adsp->pas_id);
 if (ret) {
  dev_err(adsp->dev,
   "failed to authenticate image and release reset\n");
  goto disable_px_supply;
 }

 ret = qcom_q6v5_wait_for_start(&adsp->q6v5, msecs_to_jiffies(5000));
 if (ret == -ETIMEDOUT) {
  dev_err(adsp->dev, "start timed out\n");
  qcom_scm_pas_shutdown(adsp->pas_id);
  goto disable_px_supply;
 }

 return 0;

disable_px_supply:
 regulator_disable(adsp->px_supply);
disable_cx_supply:
 regulator_disable(adsp->cx_supply);
disable_aggre2_clk:
 clk_disable_unprepare(adsp->aggre2_clk);
disable_xo_clk:
 clk_disable_unprepare(adsp->xo);

 return ret;
}
