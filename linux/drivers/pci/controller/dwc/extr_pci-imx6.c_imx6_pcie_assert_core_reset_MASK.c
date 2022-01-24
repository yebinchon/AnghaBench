#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imx6_pcie {scalar_t__ vpcie; int /*<<< orphan*/  iomuxc_gpr; int /*<<< orphan*/  apps_reset; int /*<<< orphan*/  pciephy_reset; TYPE_2__* drvdata; TYPE_1__* pci; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int variant; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
#define  IMX6Q 132 
#define  IMX6QP 131 
 int IMX6Q_GPR1_PCIE_REF_CLK_EN ; 
 int IMX6Q_GPR1_PCIE_SW_RST ; 
 int IMX6Q_GPR1_PCIE_TEST_PD ; 
#define  IMX6SX 130 
 int IMX6SX_GPR12_PCIE_TEST_POWERDOWN ; 
 int IMX6SX_GPR5_PCIE_BTNRST_RESET ; 
#define  IMX7D 129 
#define  IMX8MQ 128 
 int /*<<< orphan*/  IOMUXC_GPR1 ; 
 int /*<<< orphan*/  IOMUXC_GPR12 ; 
 int /*<<< orphan*/  IOMUXC_GPR5 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct imx6_pcie *imx6_pcie)
{
	struct device *dev = imx6_pcie->pci->dev;

	switch (imx6_pcie->drvdata->variant) {
	case IMX7D:
	case IMX8MQ:
		FUNC4(imx6_pcie->pciephy_reset);
		FUNC4(imx6_pcie->apps_reset);
		break;
	case IMX6SX:
		FUNC1(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,
				   IMX6SX_GPR12_PCIE_TEST_POWERDOWN,
				   IMX6SX_GPR12_PCIE_TEST_POWERDOWN);
		/* Force PCIe PHY reset */
		FUNC1(imx6_pcie->iomuxc_gpr, IOMUXC_GPR5,
				   IMX6SX_GPR5_PCIE_BTNRST_RESET,
				   IMX6SX_GPR5_PCIE_BTNRST_RESET);
		break;
	case IMX6QP:
		FUNC1(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
				   IMX6Q_GPR1_PCIE_SW_RST,
				   IMX6Q_GPR1_PCIE_SW_RST);
		break;
	case IMX6Q:
		FUNC1(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
				   IMX6Q_GPR1_PCIE_TEST_PD, 1 << 18);
		FUNC1(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
				   IMX6Q_GPR1_PCIE_REF_CLK_EN, 0 << 16);
		break;
	}

	if (imx6_pcie->vpcie && FUNC3(imx6_pcie->vpcie) > 0) {
		int ret = FUNC2(imx6_pcie->vpcie);

		if (ret)
			FUNC0(dev, "failed to disable vpcie regulator: %d\n",
				ret);
	}
}