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
struct tegra_xusb_lane {unsigned int index; struct device_node* np; struct tegra_xusb_pad* pad; int /*<<< orphan*/ * soc; int /*<<< orphan*/  list; } ;
struct tegra_xusb_usb2_lane {struct tegra_xusb_lane base; } ;
struct tegra_xusb_pad {TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lanes; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_xusb_lane* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb_usb2_lane*) ; 
 struct tegra_xusb_usb2_lane* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tegra_xusb_lane*,struct device_node*) ; 

__attribute__((used)) static struct tegra_xusb_lane *
FUNC5(struct tegra_xusb_pad *pad, struct device_node *np,
			 unsigned int index)
{
	struct tegra_xusb_usb2_lane *usb2;
	int err;

	usb2 = FUNC3(sizeof(*usb2), GFP_KERNEL);
	if (!usb2)
		return FUNC0(-ENOMEM);

	FUNC1(&usb2->base.list);
	usb2->base.soc = &pad->soc->lanes[index];
	usb2->base.index = index;
	usb2->base.pad = pad;
	usb2->base.np = np;

	err = FUNC4(&usb2->base, np);
	if (err < 0) {
		FUNC2(usb2);
		return FUNC0(err);
	}

	return &usb2->base;
}