
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct qcom_adsp {int mem_phys; int q6v5; int xo; int dev; int clks; int num_clks; scalar_t__ qdsp6ss_base; } ;


 unsigned int BIT (int ) ;
 scalar_t__ BOOT_CMD_REG ;
 int BOOT_FSM_TIMEOUT ;
 scalar_t__ BOOT_STATUS_REG ;
 scalar_t__ CORE_START_REG ;
 int ETIMEDOUT ;
 int HZ ;
 int INT_MAX ;
 scalar_t__ QDSP6SS_CORE_CBCR ;
 scalar_t__ QDSP6SS_SLEEP_CBCR ;
 scalar_t__ QDSP6SS_XO_CBCR ;
 scalar_t__ RST_EVB_REG ;
 int clk_bulk_disable_unprepare (int ,int ) ;
 int clk_bulk_prepare_enable (int ,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int dev_pm_genpd_set_performance_state (int ,int ) ;
 int msecs_to_jiffies (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int qcom_q6v5_prepare (int *) ;
 int qcom_q6v5_unprepare (int *) ;
 int qcom_q6v5_wait_for_start (int *,int ) ;
 int readl_poll_timeout (scalar_t__,unsigned int,int,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int adsp_start(struct rproc *rproc)
{
 struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
 int ret;
 unsigned int val;

 qcom_q6v5_prepare(&adsp->q6v5);

 ret = clk_prepare_enable(adsp->xo);
 if (ret)
  goto disable_irqs;

 dev_pm_genpd_set_performance_state(adsp->dev, INT_MAX);
 ret = pm_runtime_get_sync(adsp->dev);
 if (ret)
  goto disable_xo_clk;

 ret = clk_bulk_prepare_enable(adsp->num_clks, adsp->clks);
 if (ret) {
  dev_err(adsp->dev, "adsp clk_enable failed\n");
  goto disable_power_domain;
 }


 writel(1, adsp->qdsp6ss_base + QDSP6SS_XO_CBCR);


 writel(1, adsp->qdsp6ss_base + QDSP6SS_SLEEP_CBCR);


 writel(1, adsp->qdsp6ss_base + QDSP6SS_CORE_CBCR);


 writel(adsp->mem_phys >> 4, adsp->qdsp6ss_base + RST_EVB_REG);


 writel(0x1, adsp->qdsp6ss_base + CORE_START_REG);


 writel(0x1, adsp->qdsp6ss_base + BOOT_CMD_REG);


 ret = readl_poll_timeout(adsp->qdsp6ss_base + BOOT_STATUS_REG,
   val, (val & BIT(0)) != 0, 10, BOOT_FSM_TIMEOUT);
 if (ret) {
  dev_err(adsp->dev, "failed to bootup adsp\n");
  goto disable_adsp_clks;
 }

 ret = qcom_q6v5_wait_for_start(&adsp->q6v5, msecs_to_jiffies(5 * HZ));
 if (ret == -ETIMEDOUT) {
  dev_err(adsp->dev, "start timed out\n");
  goto disable_adsp_clks;
 }

 return 0;

disable_adsp_clks:
 clk_bulk_disable_unprepare(adsp->num_clks, adsp->clks);
disable_power_domain:
 dev_pm_genpd_set_performance_state(adsp->dev, 0);
 pm_runtime_put(adsp->dev);
disable_xo_clk:
 clk_disable_unprepare(adsp->xo);
disable_irqs:
 qcom_q6v5_unprepare(&adsp->q6v5);

 return ret;
}
