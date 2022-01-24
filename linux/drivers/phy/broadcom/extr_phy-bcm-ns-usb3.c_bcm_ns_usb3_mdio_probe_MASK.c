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
struct phy_provider {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct mdio_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct bcm_ns_usb3 {int family; int /*<<< orphan*/  phy; int /*<<< orphan*/  phy_write; int /*<<< orphan*/  dmp; struct mdio_device* mdiodev; struct device* dev; } ;
typedef  enum bcm_ns_family { ____Placeholder_bcm_ns_family } bcm_ns_family ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  bcm_ns_usb3_id_table ; 
 int /*<<< orphan*/  bcm_ns_usb3_mdiodev_phy_write ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct bcm_ns_usb3* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct bcm_ns_usb3*) ; 

__attribute__((used)) static int FUNC13(struct mdio_device *mdiodev)
{
	struct device *dev = &mdiodev->dev;
	const struct of_device_id *of_id;
	struct phy_provider *phy_provider;
	struct device_node *syscon_np;
	struct bcm_ns_usb3 *usb3;
	struct resource res;
	int err;

	usb3 = FUNC5(dev, sizeof(*usb3), GFP_KERNEL);
	if (!usb3)
		return -ENOMEM;

	usb3->dev = dev;
	usb3->mdiodev = mdiodev;

	of_id = FUNC9(bcm_ns_usb3_id_table, dev);
	if (!of_id)
		return -EINVAL;
	usb3->family = (enum bcm_ns_family)of_id->data;

	syscon_np = FUNC11(dev->of_node, "usb3-dmp-syscon", 0);
	err = FUNC8(syscon_np, 0, &res);
	FUNC10(syscon_np);
	if (err)
		return err;

	usb3->dmp = FUNC4(dev, &res);
	if (FUNC0(usb3->dmp)) {
		FUNC3(dev, "Failed to map DMP regs\n");
		return FUNC1(usb3->dmp);
	}

	usb3->phy_write = bcm_ns_usb3_mdiodev_phy_write;

	usb3->phy = FUNC7(dev, NULL, &ops);
	if (FUNC0(usb3->phy)) {
		FUNC3(dev, "Failed to create PHY\n");
		return FUNC1(usb3->phy);
	}

	FUNC12(usb3->phy, usb3);

	phy_provider = FUNC6(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}