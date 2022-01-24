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
typedef  int /*<<< orphan*/  u8 ;
struct usb_phy {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct usb_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct usb_phy* FUNC2 (struct device*,struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

struct usb_phy *FUNC5(struct device *dev,
	const char *phandle, u8 index)
{
	struct device_node *node;
	struct usb_phy	*phy;

	if (!dev->of_node) {
		FUNC1(dev, "device does not have a device node entry\n");
		return FUNC0(-EINVAL);
	}

	node = FUNC4(dev->of_node, phandle, index);
	if (!node) {
		FUNC1(dev, "failed to get %s phandle in %pOF node\n", phandle,
			dev->of_node);
		return FUNC0(-ENODEV);
	}
	phy = FUNC2(dev, node, NULL);
	FUNC3(node);
	return phy;
}