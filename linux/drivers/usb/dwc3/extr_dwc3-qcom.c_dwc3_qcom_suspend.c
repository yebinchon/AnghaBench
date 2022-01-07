
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_qcom {int is_suspended; int num_clocks; int * clks; int dev; scalar_t__ qscratch_base; } ;


 scalar_t__ PWR_EVNT_IRQ_STAT_REG ;
 int PWR_EVNT_LPM_IN_L2_MASK ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*) ;
 int dwc3_qcom_enable_interrupts (struct dwc3_qcom*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int dwc3_qcom_suspend(struct dwc3_qcom *qcom)
{
 u32 val;
 int i;

 if (qcom->is_suspended)
  return 0;

 val = readl(qcom->qscratch_base + PWR_EVNT_IRQ_STAT_REG);
 if (!(val & PWR_EVNT_LPM_IN_L2_MASK))
  dev_err(qcom->dev, "HS-PHY not in L2\n");

 for (i = qcom->num_clocks - 1; i >= 0; i--)
  clk_disable_unprepare(qcom->clks[i]);

 qcom->is_suspended = 1;
 dwc3_qcom_enable_interrupts(qcom);

 return 0;
}
