#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  set_suspend; TYPE_1__* dev; } ;
struct tegra_usb_phy {int is_ulpi_phy; int reset_gpio; scalar_t__ mode; TYPE_2__ u_phy; int /*<<< orphan*/  vbus; int /*<<< orphan*/ * config; int /*<<< orphan*/  is_legacy_phy; int /*<<< orphan*/  regs; int /*<<< orphan*/  soc_config; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct device_node {int dummy; } ;
typedef  enum usb_phy_interface { ____Placeholder_usb_phy_interface } usb_phy_interface ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  USBPHY_INTERFACE_MODE_ULPI 129 
#define  USBPHY_INTERFACE_MODE_UTMI 128 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_usb_phy* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*) ; 
 int FUNC13 (struct device_node*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct tegra_usb_phy*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  FUNC17 (struct tegra_usb_phy*) ; 
 int /*<<< orphan*/  tegra_usb_phy_id_table ; 
 int FUNC18 (struct tegra_usb_phy*) ; 
 int /*<<< orphan*/  tegra_usb_phy_suspend ; 
 int FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int FUNC21 (struct tegra_usb_phy*,struct platform_device*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct resource *res;
	struct tegra_usb_phy *tegra_phy = NULL;
	struct device_node *np = pdev->dev.of_node;
	enum usb_phy_interface phy_type;
	int err;

	tegra_phy = FUNC6(&pdev->dev, sizeof(*tegra_phy), GFP_KERNEL);
	if (!tegra_phy)
		return -ENOMEM;

	match = FUNC11(tegra_usb_phy_id_table, &pdev->dev);
	if (!match) {
		FUNC3(&pdev->dev, "Error: No device match found\n");
		return -ENODEV;
	}
	tegra_phy->soc_config = match->data;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&pdev->dev, "Failed to get I/O memory\n");
		return  -ENXIO;
	}

	tegra_phy->regs = FUNC5(&pdev->dev, res->start,
		FUNC16(res));
	if (!tegra_phy->regs) {
		FUNC3(&pdev->dev, "Failed to remap I/O memory\n");
		return -ENOMEM;
	}

	tegra_phy->is_legacy_phy =
		FUNC12(np, "nvidia,has-legacy-mode");

	phy_type = FUNC13(np);
	switch (phy_type) {
	case USBPHY_INTERFACE_MODE_UTMI:
		err = FUNC21(tegra_phy, pdev);
		if (err < 0)
			return err;
		break;

	case USBPHY_INTERFACE_MODE_ULPI:
		tegra_phy->is_ulpi_phy = true;

		tegra_phy->reset_gpio =
			FUNC10(np, "nvidia,phy-reset-gpio", 0);
		if (!FUNC8(tegra_phy->reset_gpio)) {
			FUNC3(&pdev->dev,
				"Invalid GPIO: %d\n", tegra_phy->reset_gpio);
			return tegra_phy->reset_gpio;
		}
		tegra_phy->config = NULL;
		break;

	default:
		FUNC3(&pdev->dev, "phy_type %u is invalid or unsupported\n",
			phy_type);
		return -EINVAL;
	}

	if (FUNC9(np, "dr_mode", NULL))
		tegra_phy->mode = FUNC20(&pdev->dev);
	else
		tegra_phy->mode = USB_DR_MODE_HOST;

	if (tegra_phy->mode == USB_DR_MODE_UNKNOWN) {
		FUNC3(&pdev->dev, "dr_mode is invalid\n");
		return -EINVAL;
	}

	/* On some boards, the VBUS regulator doesn't need to be controlled */
	if (FUNC9(np, "vbus-supply", NULL)) {
		tegra_phy->vbus = FUNC7(&pdev->dev, "vbus");
		if (FUNC1(tegra_phy->vbus))
			return FUNC2(tegra_phy->vbus);
	} else {
		FUNC4(&pdev->dev, "no vbus regulator");
		tegra_phy->vbus = FUNC0(-ENODEV);
	}

	tegra_phy->u_phy.dev = &pdev->dev;
	err = FUNC18(tegra_phy);
	if (err < 0)
		return err;

	tegra_phy->u_phy.set_suspend = tegra_usb_phy_suspend;

	FUNC15(pdev, tegra_phy);

	err = FUNC19(&tegra_phy->u_phy);
	if (err < 0) {
		FUNC17(tegra_phy);
		return err;
	}

	return 0;
}