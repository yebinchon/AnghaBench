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
typedef  int /*<<< orphan*/  u32 ;
struct mii_bus {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; struct device_node* of_node; } ;
struct mdio_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mdio_device*) ; 
 int FUNC1 (struct mdio_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct device_node*,int /*<<< orphan*/ ) ; 
 struct mdio_device* FUNC3 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdio_device*) ; 
 int FUNC5 (struct mdio_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 

__attribute__((used)) static int FUNC9(struct mii_bus *mdio,
				      struct device_node *child, u32 addr)
{
	struct mdio_device *mdiodev;
	int rc;

	mdiodev = FUNC3(mdio, addr);
	if (FUNC0(mdiodev))
		return FUNC1(mdiodev);

	/* Associate the OF node with the device structure so it
	 * can be looked up later.
	 */
	FUNC7(child);
	mdiodev->dev.of_node = child;
	mdiodev->dev.fwnode = FUNC6(child);

	/* All data is now stored in the mdiodev struct; register it. */
	rc = FUNC5(mdiodev);
	if (rc) {
		FUNC4(mdiodev);
		FUNC8(child);
		return rc;
	}

	FUNC2(&mdio->dev, "registered mdio device %pOFn at address %i\n",
		child, addr);
	return 0;
}