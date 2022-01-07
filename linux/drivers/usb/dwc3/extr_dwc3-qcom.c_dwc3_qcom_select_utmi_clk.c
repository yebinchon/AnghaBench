
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_qcom {int qscratch_base; } ;


 int PIPE3_PHYSTATUS_SW ;
 int PIPE_UTMI_CLK_DIS ;
 int PIPE_UTMI_CLK_SEL ;
 int QSCRATCH_GENERAL_CFG ;
 int dwc3_qcom_clrbits (int ,int ,int) ;
 int dwc3_qcom_setbits (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
{

 dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
     PIPE_UTMI_CLK_DIS);

 usleep_range(100, 1000);

 dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
     PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);

 usleep_range(100, 1000);

 dwc3_qcom_clrbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
     PIPE_UTMI_CLK_DIS);
}
