#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct imx6_pcie {int /*<<< orphan*/  iomuxc_gpr; int /*<<< orphan*/  pcie_aux; int /*<<< orphan*/  pcie_inbound_axi; TYPE_1__* drvdata; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int variant; } ;

/* Variables and functions */
#define  IMX6Q 132 
#define  IMX6QP 131 
 int IMX6Q_GPR1_PCIE_REF_CLK_EN ; 
 int IMX6Q_GPR1_PCIE_TEST_PD ; 
#define  IMX6SX 130 
 int IMX6SX_GPR12_PCIE_TEST_POWERDOWN ; 
#define  IMX7D 129 
#define  IMX8MQ 128 
 int IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE ; 
 int IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN ; 
 unsigned int IOMUXC_GPR1 ; 
 unsigned int IOMUXC_GPR12 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 unsigned int FUNC2 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct imx6_pcie *imx6_pcie)
{
	struct dw_pcie *pci = imx6_pcie->pci;
	struct device *dev = pci->dev;
	unsigned int offset;
	int ret = 0;

	switch (imx6_pcie->drvdata->variant) {
	case IMX6SX:
		ret = FUNC0(imx6_pcie->pcie_inbound_axi);
		if (ret) {
			FUNC1(dev, "unable to enable pcie_axi clock\n");
			break;
		}

		FUNC3(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,
				   IMX6SX_GPR12_PCIE_TEST_POWERDOWN, 0);
		break;
	case IMX6QP:		/* FALLTHROUGH */
	case IMX6Q:
		/* power up core phy and enable ref clock */
		FUNC3(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
				   IMX6Q_GPR1_PCIE_TEST_PD, 0 << 18);
		/*
		 * the async reset input need ref clock to sync internally,
		 * when the ref clock comes after reset, internal synced
		 * reset time is too short, cannot meet the requirement.
		 * add one ~10us delay here.
		 */
		FUNC4(10, 100);
		FUNC3(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
				   IMX6Q_GPR1_PCIE_REF_CLK_EN, 1 << 16);
		break;
	case IMX7D:
		break;
	case IMX8MQ:
		ret = FUNC0(imx6_pcie->pcie_aux);
		if (ret) {
			FUNC1(dev, "unable to enable pcie_aux clock\n");
			break;
		}

		offset = FUNC2(imx6_pcie);
		/*
		 * Set the over ride low and enabled
		 * make sure that REF_CLK is turned on.
		 */
		FUNC3(imx6_pcie->iomuxc_gpr, offset,
				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
				   0);
		FUNC3(imx6_pcie->iomuxc_gpr, offset,
				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
		break;
	}

	return ret;
}