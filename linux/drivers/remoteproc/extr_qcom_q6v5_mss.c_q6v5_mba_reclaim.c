
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct q6v5 {int dump_mba_loaded; scalar_t__ version; int proxy_reg_count; int proxy_regs; int proxy_clk_count; int proxy_clks; int dev; int proxy_pd_count; int proxy_pds; int q6v5; int mba_size; int mba_phys; int mba_perm; int active_pd_count; int active_pds; int active_reg_count; int active_regs; int active_clk_count; int active_clks; int reset_clk_count; int reset_clks; int mpss_size; int mpss_phys; int mpss_perm; scalar_t__ reg_base; int halt_nc; int halt_map; int halt_modem; int halt_q6; } ;


 scalar_t__ MSS_MSM8996 ;
 int Q6SS_CLAMP_IO ;
 scalar_t__ QDSP6SS_PWR_CTL_REG ;
 int QDSP6v56_CLAMP_QMC_MEM ;
 int QDSP6v56_CLAMP_WL ;
 int WARN_ON (int) ;
 int q6v5_clk_disable (int ,int ,int ) ;
 int q6v5_pds_disable (struct q6v5*,int ,int ) ;
 int q6v5_regulator_disable (struct q6v5*,int ,int ) ;
 int q6v5_reset_assert (struct q6v5*) ;
 int q6v5_xfer_mem_ownership (struct q6v5*,int *,int,int ,int ) ;
 int q6v5proc_halt_axi_port (struct q6v5*,int ,int ) ;
 int qcom_q6v5_unprepare (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void q6v5_mba_reclaim(struct q6v5 *qproc)
{
 int ret;
 u32 val;

 qproc->dump_mba_loaded = 0;

 q6v5proc_halt_axi_port(qproc, qproc->halt_map, qproc->halt_q6);
 q6v5proc_halt_axi_port(qproc, qproc->halt_map, qproc->halt_modem);
 q6v5proc_halt_axi_port(qproc, qproc->halt_map, qproc->halt_nc);
 if (qproc->version == MSS_MSM8996) {



  val = readl(qproc->reg_base + QDSP6SS_PWR_CTL_REG);
  val |= Q6SS_CLAMP_IO | QDSP6v56_CLAMP_WL |
   QDSP6v56_CLAMP_QMC_MEM;
  writel(val, qproc->reg_base + QDSP6SS_PWR_CTL_REG);
 }

 ret = q6v5_xfer_mem_ownership(qproc, &qproc->mpss_perm,
          0, qproc->mpss_phys,
          qproc->mpss_size);
 WARN_ON(ret);

 q6v5_reset_assert(qproc);

 q6v5_clk_disable(qproc->dev, qproc->reset_clks,
    qproc->reset_clk_count);
 q6v5_clk_disable(qproc->dev, qproc->active_clks,
    qproc->active_clk_count);
 q6v5_regulator_disable(qproc, qproc->active_regs,
          qproc->active_reg_count);
 q6v5_pds_disable(qproc, qproc->active_pds, qproc->active_pd_count);




 ret = q6v5_xfer_mem_ownership(qproc, &qproc->mba_perm, 0,
          qproc->mba_phys,
          qproc->mba_size);
 WARN_ON(ret);

 ret = qcom_q6v5_unprepare(&qproc->q6v5);
 if (ret) {
  q6v5_pds_disable(qproc, qproc->proxy_pds,
     qproc->proxy_pd_count);
  q6v5_clk_disable(qproc->dev, qproc->proxy_clks,
     qproc->proxy_clk_count);
  q6v5_regulator_disable(qproc, qproc->proxy_regs,
           qproc->proxy_reg_count);
 }
}
