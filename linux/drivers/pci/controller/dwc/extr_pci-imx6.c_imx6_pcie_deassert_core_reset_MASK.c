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
struct imx6_pcie {int gpio_active_high; scalar_t__ vpcie; int /*<<< orphan*/  pcie_phy; int /*<<< orphan*/  pcie_bus; int /*<<< orphan*/  pcie; int /*<<< orphan*/  iomuxc_gpr; scalar_t__ phy_base; int /*<<< orphan*/  pciephy_reset; TYPE_1__* drvdata; int /*<<< orphan*/  reset_gpio; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int variant; } ;

/* Variables and functions */
#define  IMX6Q 132 
#define  IMX6QP 131 
 int /*<<< orphan*/  IMX6Q_GPR1_PCIE_SW_RST ; 
#define  IMX6SX 130 
 int /*<<< orphan*/  IMX6SX_GPR5_PCIE_BTNRST_RESET ; 
#define  IMX7D 129 
#define  IMX8MQ 128 
 int /*<<< orphan*/  IOMUXC_GPR1 ; 
 int /*<<< orphan*/  IOMUXC_GPR5 ; 
 scalar_t__ PCIE_PHY_CMN_REG24 ; 
 int PCIE_PHY_CMN_REG24_RX_EQ ; 
 int PCIE_PHY_CMN_REG24_RX_EQ_SEL ; 
 scalar_t__ PCIE_PHY_CMN_REG26 ; 
 int PCIE_PHY_CMN_REG26_ATT_MODE ; 
 scalar_t__ PCIE_PHY_CMN_REG4 ; 
 int PCIE_PHY_CMN_REG4_DCC_FB_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC17(struct imx6_pcie *imx6_pcie)
{
	struct dw_pcie *pci = imx6_pcie->pci;
	struct device *dev = pci->dev;
	int ret;

	if (imx6_pcie->vpcie && !FUNC13(imx6_pcie->vpcie)) {
		ret = FUNC12(imx6_pcie->vpcie);
		if (ret) {
			FUNC2(dev, "failed to enable vpcie regulator: %d\n",
				ret);
			return;
		}
	}

	ret = FUNC1(imx6_pcie->pcie_phy);
	if (ret) {
		FUNC2(dev, "unable to enable pcie_phy clock\n");
		goto err_pcie_phy;
	}

	ret = FUNC1(imx6_pcie->pcie_bus);
	if (ret) {
		FUNC2(dev, "unable to enable pcie_bus clock\n");
		goto err_pcie_bus;
	}

	ret = FUNC1(imx6_pcie->pcie);
	if (ret) {
		FUNC2(dev, "unable to enable pcie clock\n");
		goto err_pcie;
	}

	ret = FUNC6(imx6_pcie);
	if (ret) {
		FUNC2(dev, "unable to enable pcie ref clock\n");
		goto err_ref_clk;
	}

	/* allow the clocks to stabilize */
	FUNC15(200, 500);

	/* Some boards don't have PCIe reset GPIO. */
	if (FUNC4(imx6_pcie->reset_gpio)) {
		FUNC5(imx6_pcie->reset_gpio,
					imx6_pcie->gpio_active_high);
		FUNC9(100);
		FUNC5(imx6_pcie->reset_gpio,
					!imx6_pcie->gpio_active_high);
	}

	switch (imx6_pcie->drvdata->variant) {
	case IMX8MQ:
		FUNC14(imx6_pcie->pciephy_reset);
		break;
	case IMX7D:
		FUNC14(imx6_pcie->pciephy_reset);

		/* Workaround for ERR010728, failure of PCI-e PLL VCO to
		 * oscillate, especially when cold.  This turns off "Duty-cycle
		 * Corrector" and other mysterious undocumented things.
		 */
		if (FUNC8(imx6_pcie->phy_base)) {
			/* De-assert DCC_FB_EN */
			FUNC16(PCIE_PHY_CMN_REG4_DCC_FB_EN,
			       imx6_pcie->phy_base + PCIE_PHY_CMN_REG4);
			/* Assert RX_EQS and RX_EQS_SEL */
			FUNC16(PCIE_PHY_CMN_REG24_RX_EQ_SEL
				| PCIE_PHY_CMN_REG24_RX_EQ,
			       imx6_pcie->phy_base + PCIE_PHY_CMN_REG24);
			/* Assert ATT_MODE */
			FUNC16(PCIE_PHY_CMN_REG26_ATT_MODE,
			       imx6_pcie->phy_base + PCIE_PHY_CMN_REG26);
		} else {
			FUNC3(dev, "Unable to apply ERR010728 workaround. DT missing fsl,imx7d-pcie-phy phandle ?\n");
		}

		FUNC7(imx6_pcie);
		break;
	case IMX6SX:
		FUNC10(imx6_pcie->iomuxc_gpr, IOMUXC_GPR5,
				   IMX6SX_GPR5_PCIE_BTNRST_RESET, 0);
		break;
	case IMX6QP:
		FUNC10(imx6_pcie->iomuxc_gpr, IOMUXC_GPR1,
				   IMX6Q_GPR1_PCIE_SW_RST, 0);

		FUNC15(200, 500);
		break;
	case IMX6Q:		/* Nothing to do */
		break;
	}

	return;

err_ref_clk:
	FUNC0(imx6_pcie->pcie);
err_pcie:
	FUNC0(imx6_pcie->pcie_bus);
err_pcie_bus:
	FUNC0(imx6_pcie->pcie_phy);
err_pcie_phy:
	if (imx6_pcie->vpcie && FUNC13(imx6_pcie->vpcie) > 0) {
		ret = FUNC11(imx6_pcie->vpcie);
		if (ret)
			FUNC2(dev, "failed to disable vpcie regulator: %d\n",
				ret);
	}
}