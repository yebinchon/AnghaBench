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
struct extcon_dev {int dummy; } ;
struct dwc3 {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct extcon_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*,char*,char const**) ; 
 struct extcon_dev* FUNC3 (struct device_node*) ; 
 struct extcon_dev* FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 struct extcon_dev* FUNC5 (char const*) ; 
 struct device_node* FUNC6 (struct device_node*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct extcon_dev *FUNC9(struct dwc3 *dwc)
{
	struct device *dev = dwc->dev;
	struct device_node *np_phy, *np_conn;
	struct extcon_dev *edev;
	const char *name;

	if (FUNC1(dev, "extcon"))
		return FUNC4(dev, 0);

	/*
	 * Device tree platforms should get extcon via phandle.
	 * On ACPI platforms, we get the name from a device property.
	 * This device property is for kernel internal use only and
	 * is expected to be set by the glue code.
	 */
	if (FUNC2(dev, "linux,extcon-name", &name) == 0) {
		edev = FUNC5(name);
		if (!edev)
			return FUNC0(-EPROBE_DEFER);

		return edev;
	}

	np_phy = FUNC8(dev->of_node, "phys", 0);
	np_conn = FUNC6(np_phy, -1, -1);

	if (np_conn)
		edev = FUNC3(np_conn);
	else
		edev = NULL;

	FUNC7(np_conn);
	FUNC7(np_phy);

	return edev;
}