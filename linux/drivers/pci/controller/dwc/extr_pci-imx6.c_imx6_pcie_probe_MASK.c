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
typedef  int /*<<< orphan*/  u16 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct imx6_pcie {int reset_gpio; int controller_id; int tx_deemph_gen1; int tx_deemph_gen2_3p5db; int tx_deemph_gen2_6db; int tx_swing_full; int tx_swing_low; int link_gen; int /*<<< orphan*/ * vpcie; int /*<<< orphan*/ * iomuxc_gpr; int /*<<< orphan*/ * turnoff_reset; int /*<<< orphan*/ * apps_reset; int /*<<< orphan*/ * pciephy_reset; int /*<<< orphan*/ * pcie_aux; int /*<<< orphan*/ * pcie_inbound_axi; TYPE_1__* drvdata; int /*<<< orphan*/ * pcie; int /*<<< orphan*/ * pcie_bus; int /*<<< orphan*/ * pcie_phy; scalar_t__ gpio_active_high; int /*<<< orphan*/ * phy_base; struct dw_pcie* pci; } ;
struct dw_pcie {int /*<<< orphan*/ * dbi_base; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int variant; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
#define  IMX6SX 130 
#define  IMX7D 129 
#define  IMX8MQ 128 
 int /*<<< orphan*/  IMX8MQ_PCIE2_BASE_ADDR ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PCIE_RC_IMX6_MSI_CAP ; 
 scalar_t__ PCI_MSI_FLAGS ; 
 int /*<<< orphan*/  PCI_MSI_FLAGS_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,int,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,char*) ; 
 void* FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 int /*<<< orphan*/  FUNC10 (struct dw_pcie*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dw_pcie*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (struct imx6_pcie*,struct platform_device*) ; 
 int FUNC14 (struct device*) ; 
 int FUNC15 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 TYPE_1__* FUNC16 (struct device*) ; 
 int FUNC17 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC18 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct device_node*,char*) ; 
 int FUNC20 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC21 () ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct imx6_pcie*) ; 
 int /*<<< orphan*/ * FUNC24 (char*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct dw_pcie *pci;
	struct imx6_pcie *imx6_pcie;
	struct device_node *np;
	struct resource *dbi_base;
	struct device_node *node = dev->of_node;
	int ret;
	u16 val;

	imx6_pcie = FUNC6(dev, sizeof(*imx6_pcie), GFP_KERNEL);
	if (!imx6_pcie)
		return -ENOMEM;

	pci = FUNC6(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = dev;
	pci->ops = &dw_pcie_ops;

	imx6_pcie->pci = pci;
	imx6_pcie->drvdata = FUNC16(dev);

	/* Find the PHY if one is defined, only imx7d uses it */
	np = FUNC18(node, "fsl,imx7d-pcie-phy", 0);
	if (np) {
		struct resource res;

		ret = FUNC15(np, 0, &res);
		if (ret) {
			FUNC2(dev, "Unable to map PCIe PHY\n");
			return ret;
		}
		imx6_pcie->phy_base = FUNC5(dev, &res);
		if (FUNC0(imx6_pcie->phy_base)) {
			FUNC2(dev, "Unable to map PCIe PHY\n");
			return FUNC1(imx6_pcie->phy_base);
		}
	}

	dbi_base = FUNC22(pdev, IORESOURCE_MEM, 0);
	pci->dbi_base = FUNC5(dev, dbi_base);
	if (FUNC0(pci->dbi_base))
		return FUNC1(pci->dbi_base);

	/* Fetch GPIOs */
	imx6_pcie->reset_gpio = FUNC17(node, "reset-gpio", 0);
	imx6_pcie->gpio_active_high = FUNC19(node,
						"reset-gpio-active-high");
	if (FUNC12(imx6_pcie->reset_gpio)) {
		ret = FUNC4(dev, imx6_pcie->reset_gpio,
				imx6_pcie->gpio_active_high ?
					GPIOF_OUT_INIT_HIGH :
					GPIOF_OUT_INIT_LOW,
				"PCIe reset");
		if (ret) {
			FUNC2(dev, "unable to get reset gpio\n");
			return ret;
		}
	} else if (imx6_pcie->reset_gpio == -EPROBE_DEFER) {
		return imx6_pcie->reset_gpio;
	}

	/* Fetch clocks */
	imx6_pcie->pcie_phy = FUNC3(dev, "pcie_phy");
	if (FUNC0(imx6_pcie->pcie_phy)) {
		FUNC2(dev, "pcie_phy clock source missing or invalid\n");
		return FUNC1(imx6_pcie->pcie_phy);
	}

	imx6_pcie->pcie_bus = FUNC3(dev, "pcie_bus");
	if (FUNC0(imx6_pcie->pcie_bus)) {
		FUNC2(dev, "pcie_bus clock source missing or invalid\n");
		return FUNC1(imx6_pcie->pcie_bus);
	}

	imx6_pcie->pcie = FUNC3(dev, "pcie");
	if (FUNC0(imx6_pcie->pcie)) {
		FUNC2(dev, "pcie clock source missing or invalid\n");
		return FUNC1(imx6_pcie->pcie);
	}

	switch (imx6_pcie->drvdata->variant) {
	case IMX6SX:
		imx6_pcie->pcie_inbound_axi = FUNC3(dev,
							   "pcie_inbound_axi");
		if (FUNC0(imx6_pcie->pcie_inbound_axi)) {
			FUNC2(dev, "pcie_inbound_axi clock missing or invalid\n");
			return FUNC1(imx6_pcie->pcie_inbound_axi);
		}
		break;
	case IMX8MQ:
		imx6_pcie->pcie_aux = FUNC3(dev, "pcie_aux");
		if (FUNC0(imx6_pcie->pcie_aux)) {
			FUNC2(dev, "pcie_aux clock source missing or invalid\n");
			return FUNC1(imx6_pcie->pcie_aux);
		}
		/* fall through */
	case IMX7D:
		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
			imx6_pcie->controller_id = 1;

		imx6_pcie->pciephy_reset = FUNC8(dev,
									    "pciephy");
		if (FUNC0(imx6_pcie->pciephy_reset)) {
			FUNC2(dev, "Failed to get PCIEPHY reset control\n");
			return FUNC1(imx6_pcie->pciephy_reset);
		}

		imx6_pcie->apps_reset = FUNC8(dev,
									 "apps");
		if (FUNC0(imx6_pcie->apps_reset)) {
			FUNC2(dev, "Failed to get PCIE APPS reset control\n");
			return FUNC1(imx6_pcie->apps_reset);
		}
		break;
	default:
		break;
	}

	/* Grab turnoff reset */
	imx6_pcie->turnoff_reset = FUNC9(dev, "turnoff");
	if (FUNC0(imx6_pcie->turnoff_reset)) {
		FUNC2(dev, "Failed to get TURNOFF reset control\n");
		return FUNC1(imx6_pcie->turnoff_reset);
	}

	/* Grab GPR config register range */
	imx6_pcie->iomuxc_gpr =
		 FUNC24("fsl,imx6q-iomuxc-gpr");
	if (FUNC0(imx6_pcie->iomuxc_gpr)) {
		FUNC2(dev, "unable to find iomuxc registers\n");
		return FUNC1(imx6_pcie->iomuxc_gpr);
	}

	/* Grab PCIe PHY Tx Settings */
	if (FUNC20(node, "fsl,tx-deemph-gen1",
				 &imx6_pcie->tx_deemph_gen1))
		imx6_pcie->tx_deemph_gen1 = 0;

	if (FUNC20(node, "fsl,tx-deemph-gen2-3p5db",
				 &imx6_pcie->tx_deemph_gen2_3p5db))
		imx6_pcie->tx_deemph_gen2_3p5db = 0;

	if (FUNC20(node, "fsl,tx-deemph-gen2-6db",
				 &imx6_pcie->tx_deemph_gen2_6db))
		imx6_pcie->tx_deemph_gen2_6db = 20;

	if (FUNC20(node, "fsl,tx-swing-full",
				 &imx6_pcie->tx_swing_full))
		imx6_pcie->tx_swing_full = 127;

	if (FUNC20(node, "fsl,tx-swing-low",
				 &imx6_pcie->tx_swing_low))
		imx6_pcie->tx_swing_low = 127;

	/* Limit link speed */
	ret = FUNC20(node, "fsl,max-link-speed",
				   &imx6_pcie->link_gen);
	if (ret)
		imx6_pcie->link_gen = 1;

	imx6_pcie->vpcie = FUNC7(&pdev->dev, "vpcie");
	if (FUNC0(imx6_pcie->vpcie)) {
		if (FUNC1(imx6_pcie->vpcie) != -ENODEV)
			return FUNC1(imx6_pcie->vpcie);
		imx6_pcie->vpcie = NULL;
	}

	FUNC23(pdev, imx6_pcie);

	ret = FUNC14(dev);
	if (ret)
		return ret;

	ret = FUNC13(imx6_pcie, pdev);
	if (ret < 0)
		return ret;

	if (FUNC21()) {
		val = FUNC10(pci, PCIE_RC_IMX6_MSI_CAP +
					PCI_MSI_FLAGS);
		val |= PCI_MSI_FLAGS_ENABLE;
		FUNC11(pci, PCIE_RC_IMX6_MSI_CAP + PCI_MSI_FLAGS,
				   val);
	}

	return 0;
}