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
struct phy_device {int dummy; } ;
struct mdio_device {int flags; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MDIO_DEVICE_FLAG_PHY ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,struct device_node*) ; 
 int /*<<< orphan*/  mdio_bus_type ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct mdio_device* FUNC2 (struct device*) ; 
 struct phy_device* FUNC3 (struct device*) ; 

struct phy_device *FUNC4(struct device_node *phy_np)
{
	struct device *d;
	struct mdio_device *mdiodev;

	if (!phy_np)
		return NULL;

	d = FUNC0(&mdio_bus_type, phy_np);
	if (d) {
		mdiodev = FUNC2(d);
		if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY)
			return FUNC3(d);
		FUNC1(d);
	}

	return NULL;
}