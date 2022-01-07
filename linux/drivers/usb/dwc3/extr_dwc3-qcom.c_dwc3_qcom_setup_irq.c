
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dwc3_qcom {int hs_phy_irq; int dp_hs_phy_irq; int dm_hs_phy_irq; int ss_phy_irq; int dev; struct dwc3_acpi_pdata* acpi_pdata; } ;
struct dwc3_acpi_pdata {int hs_phy_irq_index; int dp_hs_phy_irq_index; int dm_hs_phy_irq_index; int ss_phy_irq_index; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int IRQ_NOAUTOEN ;
 int dev_err (int ,char*,int) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int,char*,struct dwc3_qcom*) ;
 int dwc3_qcom_get_irq (struct platform_device*,char*,int) ;
 int irq_set_status_flags (int,int ) ;
 struct dwc3_qcom* platform_get_drvdata (struct platform_device*) ;
 int qcom_dwc3_resume_irq ;

__attribute__((used)) static int dwc3_qcom_setup_irq(struct platform_device *pdev)
{
 struct dwc3_qcom *qcom = platform_get_drvdata(pdev);
 const struct dwc3_acpi_pdata *pdata = qcom->acpi_pdata;
 int irq, ret;
 irq = dwc3_qcom_get_irq(pdev, "hs_phy_irq",
    pdata ? pdata->hs_phy_irq_index : -1);
 if (irq > 0) {

  irq_set_status_flags(irq, IRQ_NOAUTOEN);
  ret = devm_request_threaded_irq(qcom->dev, irq, ((void*)0),
     qcom_dwc3_resume_irq,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "qcom_dwc3 HS", qcom);
  if (ret) {
   dev_err(qcom->dev, "hs_phy_irq failed: %d\n", ret);
   return ret;
  }
  qcom->hs_phy_irq = irq;
 }

 irq = dwc3_qcom_get_irq(pdev, "dp_hs_phy_irq",
    pdata ? pdata->dp_hs_phy_irq_index : -1);
 if (irq > 0) {
  irq_set_status_flags(irq, IRQ_NOAUTOEN);
  ret = devm_request_threaded_irq(qcom->dev, irq, ((void*)0),
     qcom_dwc3_resume_irq,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "qcom_dwc3 DP_HS", qcom);
  if (ret) {
   dev_err(qcom->dev, "dp_hs_phy_irq failed: %d\n", ret);
   return ret;
  }
  qcom->dp_hs_phy_irq = irq;
 }

 irq = dwc3_qcom_get_irq(pdev, "dm_hs_phy_irq",
    pdata ? pdata->dm_hs_phy_irq_index : -1);
 if (irq > 0) {
  irq_set_status_flags(irq, IRQ_NOAUTOEN);
  ret = devm_request_threaded_irq(qcom->dev, irq, ((void*)0),
     qcom_dwc3_resume_irq,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "qcom_dwc3 DM_HS", qcom);
  if (ret) {
   dev_err(qcom->dev, "dm_hs_phy_irq failed: %d\n", ret);
   return ret;
  }
  qcom->dm_hs_phy_irq = irq;
 }

 irq = dwc3_qcom_get_irq(pdev, "ss_phy_irq",
    pdata ? pdata->ss_phy_irq_index : -1);
 if (irq > 0) {
  irq_set_status_flags(irq, IRQ_NOAUTOEN);
  ret = devm_request_threaded_irq(qcom->dev, irq, ((void*)0),
     qcom_dwc3_resume_irq,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "qcom_dwc3 SS", qcom);
  if (ret) {
   dev_err(qcom->dev, "ss_phy_irq failed: %d\n", ret);
   return ret;
  }
  qcom->ss_phy_irq = irq;
 }

 return 0;
}
