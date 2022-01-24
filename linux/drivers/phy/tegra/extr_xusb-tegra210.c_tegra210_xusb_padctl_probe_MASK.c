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
struct tegra_xusb_padctl_soc {int dummy; } ;
struct tegra_xusb_padctl {struct tegra_xusb_padctl_soc const* soc; struct device* dev; } ;
struct tegra210_xusb_padctl {struct tegra_xusb_padctl base; int /*<<< orphan*/  fuse; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_xusb_padctl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tegra210_xusb_padctl* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tegra_xusb_padctl *
FUNC3(struct device *dev,
			   const struct tegra_xusb_padctl_soc *soc)
{
	struct tegra210_xusb_padctl *padctl;
	int err;

	padctl = FUNC1(dev, sizeof(*padctl), GFP_KERNEL);
	if (!padctl)
		return FUNC0(-ENOMEM);

	padctl->base.dev = dev;
	padctl->base.soc = soc;

	err = FUNC2(&padctl->fuse);
	if (err < 0)
		return FUNC0(err);

	return &padctl->base;
}