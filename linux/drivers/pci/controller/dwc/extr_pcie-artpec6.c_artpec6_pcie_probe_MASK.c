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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct dw_pcie {void* dbi_base; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct artpec_pcie_of_data {scalar_t__ mode; scalar_t__ variant; } ;
struct artpec6_pcie {int variant; int mode; void* regmap; void* phy_base; struct dw_pcie* pci; } ;
typedef  enum dw_pcie_device_mode { ____Placeholder_dw_pcie_device_mode } dw_pcie_device_mode ;
typedef  enum artpec_pcie_variants { ____Placeholder_artpec_pcie_variants } artpec_pcie_variants ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCIE_ARTPEC6_EP ; 
 int /*<<< orphan*/  CONFIG_PCIE_ARTPEC6_HOST ; 
#define  DW_PCIE_EP_TYPE 129 
#define  DW_PCIE_RC_TYPE 128 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  PCIECFG ; 
 int /*<<< orphan*/  PCIECFG_DEVICE_TYPE_MASK ; 
 int FUNC2 (void*) ; 
 int FUNC3 (struct artpec6_pcie*,struct platform_device*) ; 
 int FUNC4 (struct artpec6_pcie*,struct platform_device*) ; 
 int /*<<< orphan*/  artpec6_pcie_of_match ; 
 int /*<<< orphan*/  FUNC5 (struct artpec6_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct artpec6_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 void* FUNC8 (struct device*,struct resource*) ; 
 void* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct device*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct artpec6_pcie*) ; 
 void* FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct dw_pcie *pci;
	struct artpec6_pcie *artpec6_pcie;
	struct resource *dbi_base;
	struct resource *phy_base;
	int ret;
	const struct of_device_id *match;
	const struct artpec_pcie_of_data *data;
	enum artpec_pcie_variants variant;
	enum dw_pcie_device_mode mode;

	match = FUNC10(artpec6_pcie_of_match, dev);
	if (!match)
		return -EINVAL;

	data = (struct artpec_pcie_of_data *)match->data;
	variant = (enum artpec_pcie_variants)data->variant;
	mode = (enum dw_pcie_device_mode)data->mode;

	artpec6_pcie = FUNC9(dev, sizeof(*artpec6_pcie), GFP_KERNEL);
	if (!artpec6_pcie)
		return -ENOMEM;

	pci = FUNC9(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = dev;
	pci->ops = &dw_pcie_ops;

	artpec6_pcie->pci = pci;
	artpec6_pcie->variant = variant;
	artpec6_pcie->mode = mode;

	dbi_base = FUNC11(pdev, IORESOURCE_MEM, "dbi");
	pci->dbi_base = FUNC8(dev, dbi_base);
	if (FUNC1(pci->dbi_base))
		return FUNC2(pci->dbi_base);

	phy_base = FUNC11(pdev, IORESOURCE_MEM, "phy");
	artpec6_pcie->phy_base = FUNC8(dev, phy_base);
	if (FUNC1(artpec6_pcie->phy_base))
		return FUNC2(artpec6_pcie->phy_base);

	artpec6_pcie->regmap =
		FUNC13(dev->of_node,
						"axis,syscon-pcie");
	if (FUNC1(artpec6_pcie->regmap))
		return FUNC2(artpec6_pcie->regmap);

	FUNC12(pdev, artpec6_pcie);

	switch (artpec6_pcie->mode) {
	case DW_PCIE_RC_TYPE:
		if (!FUNC0(CONFIG_PCIE_ARTPEC6_HOST))
			return -ENODEV;

		ret = FUNC4(artpec6_pcie, pdev);
		if (ret < 0)
			return ret;
		break;
	case DW_PCIE_EP_TYPE: {
		u32 val;

		if (!FUNC0(CONFIG_PCIE_ARTPEC6_EP))
			return -ENODEV;

		val = FUNC5(artpec6_pcie, PCIECFG);
		val &= ~PCIECFG_DEVICE_TYPE_MASK;
		FUNC6(artpec6_pcie, PCIECFG, val);
		ret = FUNC3(artpec6_pcie, pdev);
		if (ret < 0)
			return ret;
		break;
	}
	default:
		FUNC7(dev, "INVALID device type %d\n", artpec6_pcie->mode);
	}

	return 0;
}