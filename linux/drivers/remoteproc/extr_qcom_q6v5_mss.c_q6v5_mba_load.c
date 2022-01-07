
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {int dump_mba_loaded; int q6v5; int active_pd_count; int active_pds; int proxy_pd_count; int proxy_pds; int proxy_reg_count; int proxy_regs; int proxy_clk_count; int proxy_clks; int dev; int active_reg_count; int active_regs; int reset_clk_count; int reset_clks; int active_clk_count; int active_clks; int mba_size; int mba_phys; int mba_perm; int halt_nc; int halt_map; int halt_modem; int halt_q6; scalar_t__ rmb_base; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ RMB_MBA_IMAGE_REG ;
 int RMB_MBA_XPU_UNLOCKED ;
 int RMB_MBA_XPU_UNLOCKED_SCRIBBLED ;
 int dev_err (int ,char*,...) ;
 int q6v5_clk_disable (int ,int ,int ) ;
 int q6v5_clk_enable (int ,int ,int ) ;
 int q6v5_pds_disable (struct q6v5*,int ,int ) ;
 int q6v5_pds_enable (struct q6v5*,int ,int ) ;
 int q6v5_regulator_disable (struct q6v5*,int ,int ) ;
 int q6v5_regulator_enable (struct q6v5*,int ,int ) ;
 int q6v5_reset_assert (struct q6v5*) ;
 int q6v5_reset_deassert (struct q6v5*) ;
 int q6v5_rmb_mba_wait (struct q6v5*,int ,int) ;
 int q6v5_xfer_mem_ownership (struct q6v5*,int *,int,int ,int ) ;
 int q6v5proc_halt_axi_port (struct q6v5*,int ,int ) ;
 int q6v5proc_reset (struct q6v5*) ;
 int qcom_q6v5_prepare (int *) ;
 int qcom_q6v5_unprepare (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int q6v5_mba_load(struct q6v5 *qproc)
{
 int ret;
 int xfermemop_ret;

 qcom_q6v5_prepare(&qproc->q6v5);

 ret = q6v5_pds_enable(qproc, qproc->active_pds, qproc->active_pd_count);
 if (ret < 0) {
  dev_err(qproc->dev, "failed to enable active power domains\n");
  goto disable_irqs;
 }

 ret = q6v5_pds_enable(qproc, qproc->proxy_pds, qproc->proxy_pd_count);
 if (ret < 0) {
  dev_err(qproc->dev, "failed to enable proxy power domains\n");
  goto disable_active_pds;
 }

 ret = q6v5_regulator_enable(qproc, qproc->proxy_regs,
        qproc->proxy_reg_count);
 if (ret) {
  dev_err(qproc->dev, "failed to enable proxy supplies\n");
  goto disable_proxy_pds;
 }

 ret = q6v5_clk_enable(qproc->dev, qproc->proxy_clks,
         qproc->proxy_clk_count);
 if (ret) {
  dev_err(qproc->dev, "failed to enable proxy clocks\n");
  goto disable_proxy_reg;
 }

 ret = q6v5_regulator_enable(qproc, qproc->active_regs,
        qproc->active_reg_count);
 if (ret) {
  dev_err(qproc->dev, "failed to enable supplies\n");
  goto disable_proxy_clk;
 }

 ret = q6v5_clk_enable(qproc->dev, qproc->reset_clks,
         qproc->reset_clk_count);
 if (ret) {
  dev_err(qproc->dev, "failed to enable reset clocks\n");
  goto disable_vdd;
 }

 ret = q6v5_reset_deassert(qproc);
 if (ret) {
  dev_err(qproc->dev, "failed to deassert mss restart\n");
  goto disable_reset_clks;
 }

 ret = q6v5_clk_enable(qproc->dev, qproc->active_clks,
         qproc->active_clk_count);
 if (ret) {
  dev_err(qproc->dev, "failed to enable clocks\n");
  goto assert_reset;
 }


 ret = q6v5_xfer_mem_ownership(qproc, &qproc->mba_perm, 1,
          qproc->mba_phys, qproc->mba_size);
 if (ret) {
  dev_err(qproc->dev,
   "assigning Q6 access to mba memory failed: %d\n", ret);
  goto disable_active_clks;
 }

 writel(qproc->mba_phys, qproc->rmb_base + RMB_MBA_IMAGE_REG);

 ret = q6v5proc_reset(qproc);
 if (ret)
  goto reclaim_mba;

 ret = q6v5_rmb_mba_wait(qproc, 0, 5000);
 if (ret == -ETIMEDOUT) {
  dev_err(qproc->dev, "MBA boot timed out\n");
  goto halt_axi_ports;
 } else if (ret != RMB_MBA_XPU_UNLOCKED &&
     ret != RMB_MBA_XPU_UNLOCKED_SCRIBBLED) {
  dev_err(qproc->dev, "MBA returned unexpected status %d\n", ret);
  ret = -EINVAL;
  goto halt_axi_ports;
 }

 qproc->dump_mba_loaded = 1;
 return 0;

halt_axi_ports:
 q6v5proc_halt_axi_port(qproc, qproc->halt_map, qproc->halt_q6);
 q6v5proc_halt_axi_port(qproc, qproc->halt_map, qproc->halt_modem);
 q6v5proc_halt_axi_port(qproc, qproc->halt_map, qproc->halt_nc);

reclaim_mba:
 xfermemop_ret = q6v5_xfer_mem_ownership(qproc, &qproc->mba_perm, 0,
      qproc->mba_phys,
      qproc->mba_size);
 if (xfermemop_ret) {
  dev_err(qproc->dev,
   "Failed to reclaim mba buffer, system may become unstable\n");
 }

disable_active_clks:
 q6v5_clk_disable(qproc->dev, qproc->active_clks,
    qproc->active_clk_count);
assert_reset:
 q6v5_reset_assert(qproc);
disable_reset_clks:
 q6v5_clk_disable(qproc->dev, qproc->reset_clks,
    qproc->reset_clk_count);
disable_vdd:
 q6v5_regulator_disable(qproc, qproc->active_regs,
          qproc->active_reg_count);
disable_proxy_clk:
 q6v5_clk_disable(qproc->dev, qproc->proxy_clks,
    qproc->proxy_clk_count);
disable_proxy_reg:
 q6v5_regulator_disable(qproc, qproc->proxy_regs,
          qproc->proxy_reg_count);
disable_proxy_pds:
 q6v5_pds_disable(qproc, qproc->proxy_pds, qproc->proxy_pd_count);
disable_active_pds:
 q6v5_pds_disable(qproc, qproc->active_pds, qproc->active_pd_count);
disable_irqs:
 qcom_q6v5_unprepare(&qproc->q6v5);

 return ret;
}
