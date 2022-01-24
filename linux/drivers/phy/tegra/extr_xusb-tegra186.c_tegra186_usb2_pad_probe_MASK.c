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
struct tegra_xusb_usb2_pad {struct tegra_xusb_pad base; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_pad_soc {int dummy; } ;
struct tegra186_xusb_padctl {int /*<<< orphan*/  usb2_trk_clk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_xusb_pad* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tegra_xusb_pad*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_xusb_usb2_pad*) ; 
 struct tegra_xusb_usb2_pad* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra186_usb2_lane_ops ; 
 int FUNC9 (struct tegra_xusb_pad*,struct tegra_xusb_padctl*,struct device_node*) ; 
 int FUNC10 (struct tegra_xusb_pad*,int /*<<< orphan*/ *) ; 
 struct tegra186_xusb_padctl* FUNC11 (struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  utmi_phy_ops ; 

__attribute__((used)) static struct tegra_xusb_pad *
FUNC12(struct tegra_xusb_padctl *padctl,
			const struct tegra_xusb_pad_soc *soc,
			struct device_node *np)
{
	struct tegra186_xusb_padctl *priv = FUNC11(padctl);
	struct tegra_xusb_usb2_pad *usb2;
	struct tegra_xusb_pad *pad;
	int err;

	usb2 = FUNC8(sizeof(*usb2), GFP_KERNEL);
	if (!usb2)
		return FUNC0(-ENOMEM);

	pad = &usb2->base;
	pad->ops = &tegra186_usb2_lane_ops;
	pad->soc = soc;

	err = FUNC9(pad, padctl, np);
	if (err < 0) {
		FUNC7(usb2);
		goto out;
	}

	priv->usb2_trk_clk = FUNC6(&pad->dev, "trk");
	if (FUNC1(priv->usb2_trk_clk)) {
		err = FUNC2(priv->usb2_trk_clk);
		FUNC3(&pad->dev, "failed to get usb2 trk clock: %d\n", err);
		goto unregister;
	}

	err = FUNC10(pad, &utmi_phy_ops);
	if (err < 0)
		goto unregister;

	FUNC4(&pad->dev, pad);

	return pad;

unregister:
	FUNC5(&pad->dev);
out:
	return FUNC0(err);
}