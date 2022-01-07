
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_qcom {int qscratch_base; } ;


 int LANE0_PWR_PRESENT ;
 int QSCRATCH_HS_PHY_CTRL ;
 int QSCRATCH_SS_PHY_CTRL ;
 int SW_SESSVLD_SEL ;
 int UTMI_OTG_VBUS_VALID ;
 int dwc3_qcom_clrbits (int ,int ,int) ;
 int dwc3_qcom_setbits (int ,int ,int) ;

__attribute__((used)) static void dwc3_qcom_vbus_overrride_enable(struct dwc3_qcom *qcom, bool enable)
{
 if (enable) {
  dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_SS_PHY_CTRL,
      LANE0_PWR_PRESENT);
  dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_HS_PHY_CTRL,
      UTMI_OTG_VBUS_VALID | SW_SESSVLD_SEL);
 } else {
  dwc3_qcom_clrbits(qcom->qscratch_base, QSCRATCH_SS_PHY_CTRL,
      LANE0_PWR_PRESENT);
  dwc3_qcom_clrbits(qcom->qscratch_base, QSCRATCH_HS_PHY_CTRL,
      UTMI_OTG_VBUS_VALID | SW_SESSVLD_SEL);
 }
}
