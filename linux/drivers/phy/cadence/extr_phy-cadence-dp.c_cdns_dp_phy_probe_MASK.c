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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct cdns_dp_phy {int num_lanes; int max_bit_rate; struct phy* sd_base; struct phy* base; struct device* dev; } ;

/* Variables and functions */
 int DEFAULT_MAX_BIT_RATE ; 
 int DEFAULT_NUM_LANES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  cdns_dp_phy_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int,int) ; 
 int FUNC5 (struct device*,char*,int*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct cdns_dp_phy* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC9 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC10 (struct phy*,struct cdns_dp_phy*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct resource *regs;
	struct cdns_dp_phy *cdns_phy;
	struct device *dev = &pdev->dev;
	struct phy_provider *phy_provider;
	struct phy *phy;
	int err;

	cdns_phy = FUNC7(dev, sizeof(*cdns_phy), GFP_KERNEL);
	if (!cdns_phy)
		return -ENOMEM;

	cdns_phy->dev = &pdev->dev;

	phy = FUNC9(dev, NULL, &cdns_dp_phy_ops);
	if (FUNC0(phy)) {
		FUNC3(dev, "failed to create DisplayPort PHY\n");
		return FUNC1(phy);
	}

	regs = FUNC11(pdev, IORESOURCE_MEM, 0);
	cdns_phy->base = FUNC6(&pdev->dev, regs);
	if (FUNC0(cdns_phy->base))
		return FUNC1(cdns_phy->base);

	regs = FUNC11(pdev, IORESOURCE_MEM, 1);
	cdns_phy->sd_base = FUNC6(&pdev->dev, regs);
	if (FUNC0(cdns_phy->sd_base))
		return FUNC1(cdns_phy->sd_base);

	err = FUNC5(dev, "num_lanes",
				       &(cdns_phy->num_lanes));
	if (err)
		cdns_phy->num_lanes = DEFAULT_NUM_LANES;

	switch (cdns_phy->num_lanes) {
	case 1:
	case 2:
	case 4:
		/* valid number of lanes */
		break;
	default:
		FUNC3(dev, "unsupported number of lanes: %d\n",
			cdns_phy->num_lanes);
		return -EINVAL;
	}

	err = FUNC5(dev, "max_bit_rate",
		   &(cdns_phy->max_bit_rate));
	if (err)
		cdns_phy->max_bit_rate = DEFAULT_MAX_BIT_RATE;

	switch (cdns_phy->max_bit_rate) {
	case 2160:
	case 2430:
	case 2700:
	case 3240:
	case 4320:
	case 5400:
	case 8100:
		/* valid bit rate */
		break;
	default:
		FUNC3(dev, "unsupported max bit rate: %dMbps\n",
			cdns_phy->max_bit_rate);
		return -EINVAL;
	}

	FUNC10(phy, cdns_phy);

	phy_provider = FUNC8(dev, of_phy_simple_xlate);

	FUNC4(dev, "%d lanes, max bit rate %d.%03d Gbps\n",
		 cdns_phy->num_lanes,
		 cdns_phy->max_bit_rate / 1000,
		 cdns_phy->max_bit_rate % 1000);

	return FUNC2(phy_provider);
}