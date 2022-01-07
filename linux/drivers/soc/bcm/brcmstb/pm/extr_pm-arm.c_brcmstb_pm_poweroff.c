
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s3entry_method; scalar_t__ aon_ctrl_base; scalar_t__ aon_sram; } ;


 scalar_t__ AON_CTRL_PM_CPU_WAIT_COUNT ;
 scalar_t__ AON_REG_MAGIC_FLAGS ;
 int M1_PM_COLD_CONFIG ;
 int PM_COLD_CONFIG ;
 int PWRDWN_SEQ_POWERDOWN_PLL ;
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK ;
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT ;
 int brcmstb_do_pmsm_power_down (int ,int) ;
 int brcmstb_pm_handshake () ;
 TYPE_1__ ctrl ;
 int ddr_ctrl_set (int) ;
 int readl_relaxed (scalar_t__) ;
 int shimphy_set (int,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void brcmstb_pm_poweroff(void)
{
 brcmstb_pm_handshake();


 writel_relaxed(0, ctrl.aon_sram + AON_REG_MAGIC_FLAGS);
 (void)readl_relaxed(ctrl.aon_sram + AON_REG_MAGIC_FLAGS);


 writel_relaxed(0x10, ctrl.aon_ctrl_base + AON_CTRL_PM_CPU_WAIT_COUNT);
 (void)readl_relaxed(ctrl.aon_ctrl_base + AON_CTRL_PM_CPU_WAIT_COUNT);

 if (ctrl.s3entry_method == 1) {
  shimphy_set((PWRDWN_SEQ_POWERDOWN_PLL <<
        SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT),
        ~SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK);
  ddr_ctrl_set(0);
  brcmstb_do_pmsm_power_down(M1_PM_COLD_CONFIG, 1);
  return;
 }

 brcmstb_do_pmsm_power_down(PM_COLD_CONFIG, 0);
}
