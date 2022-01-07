
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp_phy_cfg {scalar_t__ has_lane_rst; int pwrdn_ctrl; int start_ctrl; int * regs; int no_pcs_sw_reset; } ;
struct qmp_phy {int lane_rst; int pcs; int pipe_clk; struct qcom_qmp* qmp; } ;
struct qcom_qmp {int phy_initialized; struct qmp_phy_cfg* cfg; } ;
struct phy {int dummy; } ;


 int QPHY_POWER_DOWN_CONTROL ;
 size_t QPHY_START_CTRL ;
 size_t QPHY_SW_RESET ;
 int SW_RESET ;
 int clk_disable_unprepare (int ) ;
 struct qmp_phy* phy_get_drvdata (struct phy*) ;
 int qcom_qmp_phy_com_exit (struct qcom_qmp*) ;
 int qphy_clrbits (int ,int ,int ) ;
 int qphy_setbits (int ,int ,int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int qcom_qmp_phy_disable(struct phy *phy)
{
 struct qmp_phy *qphy = phy_get_drvdata(phy);
 struct qcom_qmp *qmp = qphy->qmp;
 const struct qmp_phy_cfg *cfg = qmp->cfg;

 clk_disable_unprepare(qphy->pipe_clk);


 if (!cfg->no_pcs_sw_reset)
  qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);


 qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);


 qphy_clrbits(qphy->pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);

 if (cfg->has_lane_rst)
  reset_control_assert(qphy->lane_rst);

 qcom_qmp_phy_com_exit(qmp);

 qmp->phy_initialized = 0;

 return 0;
}
