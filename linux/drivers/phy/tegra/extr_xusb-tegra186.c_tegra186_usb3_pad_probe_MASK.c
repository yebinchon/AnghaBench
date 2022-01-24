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
struct tegra_xusb_pad {int /*<<< orphan*/  dev; struct tegra_xusb_pad_soc const* soc; int /*<<< orphan*/ * ops; } ;
struct tegra_xusb_usb3_pad {struct tegra_xusb_pad base; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_pad_soc {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_xusb_pad* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tegra_xusb_pad*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_usb3_pad*) ; 
 struct tegra_xusb_usb3_pad* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra186_usb3_lane_ops ; 
 int FUNC5 (struct tegra_xusb_pad*,struct tegra_xusb_padctl*,struct device_node*) ; 
 int FUNC6 (struct tegra_xusb_pad*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb3_phy_ops ; 

__attribute__((used)) static struct tegra_xusb_pad *
FUNC7(struct tegra_xusb_padctl *padctl,
			const struct tegra_xusb_pad_soc *soc,
			struct device_node *np)
{
	struct tegra_xusb_usb3_pad *usb3;
	struct tegra_xusb_pad *pad;
	int err;

	usb3 = FUNC4(sizeof(*usb3), GFP_KERNEL);
	if (!usb3)
		return FUNC0(-ENOMEM);

	pad = &usb3->base;
	pad->ops = &tegra186_usb3_lane_ops;
	pad->soc = soc;

	err = FUNC5(pad, padctl, np);
	if (err < 0) {
		FUNC3(usb3);
		goto out;
	}

	err = FUNC6(pad, &usb3_phy_ops);
	if (err < 0)
		goto unregister;

	FUNC1(&pad->dev, pad);

	return pad;

unregister:
	FUNC2(&pad->dev);
out:
	return FUNC0(err);
}