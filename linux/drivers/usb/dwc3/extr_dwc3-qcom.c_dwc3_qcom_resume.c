
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_qcom {int is_suspended; int num_clocks; int qscratch_base; int * clks; } ;


 int PWR_EVNT_IRQ_STAT_REG ;
 int PWR_EVNT_LPM_IN_L2_MASK ;
 int PWR_EVNT_LPM_OUT_L2_MASK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dwc3_qcom_disable_interrupts (struct dwc3_qcom*) ;
 int dwc3_qcom_setbits (int ,int ,int) ;

__attribute__((used)) static int dwc3_qcom_resume(struct dwc3_qcom *qcom)
{
 int ret;
 int i;

 if (!qcom->is_suspended)
  return 0;

 dwc3_qcom_disable_interrupts(qcom);

 for (i = 0; i < qcom->num_clocks; i++) {
  ret = clk_prepare_enable(qcom->clks[i]);
  if (ret < 0) {
   while (--i >= 0)
    clk_disable_unprepare(qcom->clks[i]);
   return ret;
  }
 }


 dwc3_qcom_setbits(qcom->qscratch_base, PWR_EVNT_IRQ_STAT_REG,
     PWR_EVNT_LPM_IN_L2_MASK | PWR_EVNT_LPM_OUT_L2_MASK);

 qcom->is_suspended = 0;

 return 0;
}
