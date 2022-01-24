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
struct usb_phy_roothub {int /*<<< orphan*/  list; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_GENERIC_PHY ; 
 int ENOMEM ; 
 struct usb_phy_roothub* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_phy_roothub* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ *) ; 

struct usb_phy_roothub *FUNC6(struct device *dev)
{
	struct usb_phy_roothub *phy_roothub;
	int i, num_phys, err;

	if (!FUNC2(CONFIG_GENERIC_PHY))
		return NULL;

	num_phys = FUNC4(dev->of_node, "phys",
					      "#phy-cells");
	if (num_phys <= 0)
		return NULL;

	phy_roothub = FUNC3(dev, sizeof(*phy_roothub), GFP_KERNEL);
	if (!phy_roothub)
		return FUNC0(-ENOMEM);

	FUNC1(&phy_roothub->list);

	for (i = 0; i < num_phys; i++) {
		err = FUNC5(dev, i, &phy_roothub->list);
		if (err)
			return FUNC0(err);
	}

	return phy_roothub;
}