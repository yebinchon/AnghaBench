#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct dwc3_qcom {int hs_phy_irq; int dp_hs_phy_irq; int dm_hs_phy_irq; int ss_phy_irq; int /*<<< orphan*/  dev; struct dwc3_acpi_pdata* acpi_pdata; } ;
struct dwc3_acpi_pdata {int hs_phy_irq_index; int dp_hs_phy_irq_index; int dm_hs_phy_irq_index; int ss_phy_irq_index; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct dwc3_qcom*) ; 
 int FUNC2 (struct platform_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct dwc3_qcom* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  qcom_dwc3_resume_irq ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct dwc3_qcom *qcom = FUNC4(pdev);
	const struct dwc3_acpi_pdata *pdata = qcom->acpi_pdata;
	int irq, ret;
	irq = FUNC2(pdev, "hs_phy_irq",
				pdata ? pdata->hs_phy_irq_index : -1);
	if (irq > 0) {
		/* Keep wakeup interrupts disabled until suspend */
		FUNC3(irq, IRQ_NOAUTOEN);
		ret = FUNC1(qcom->dev, irq, NULL,
					qcom_dwc3_resume_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"qcom_dwc3 HS", qcom);
		if (ret) {
			FUNC0(qcom->dev, "hs_phy_irq failed: %d\n", ret);
			return ret;
		}
		qcom->hs_phy_irq = irq;
	}

	irq = FUNC2(pdev, "dp_hs_phy_irq",
				pdata ? pdata->dp_hs_phy_irq_index : -1);
	if (irq > 0) {
		FUNC3(irq, IRQ_NOAUTOEN);
		ret = FUNC1(qcom->dev, irq, NULL,
					qcom_dwc3_resume_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"qcom_dwc3 DP_HS", qcom);
		if (ret) {
			FUNC0(qcom->dev, "dp_hs_phy_irq failed: %d\n", ret);
			return ret;
		}
		qcom->dp_hs_phy_irq = irq;
	}

	irq = FUNC2(pdev, "dm_hs_phy_irq",
				pdata ? pdata->dm_hs_phy_irq_index : -1);
	if (irq > 0) {
		FUNC3(irq, IRQ_NOAUTOEN);
		ret = FUNC1(qcom->dev, irq, NULL,
					qcom_dwc3_resume_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"qcom_dwc3 DM_HS", qcom);
		if (ret) {
			FUNC0(qcom->dev, "dm_hs_phy_irq failed: %d\n", ret);
			return ret;
		}
		qcom->dm_hs_phy_irq = irq;
	}

	irq = FUNC2(pdev, "ss_phy_irq",
				pdata ? pdata->ss_phy_irq_index : -1);
	if (irq > 0) {
		FUNC3(irq, IRQ_NOAUTOEN);
		ret = FUNC1(qcom->dev, irq, NULL,
					qcom_dwc3_resume_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"qcom_dwc3 SS", qcom);
		if (ret) {
			FUNC0(qcom->dev, "ss_phy_irq failed: %d\n", ret);
			return ret;
		}
		qcom->ss_phy_irq = irq;
	}

	return 0;
}