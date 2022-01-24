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
struct phy_control {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct am335x_control_usb {struct phy_control phy_ctrl; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device_node*,int /*<<< orphan*/ ) ; 
 struct am335x_control_usb* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  match ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

struct phy_control *FUNC5(struct device *dev)
{
	struct device_node *node;
	struct am335x_control_usb *ctrl_usb;

	node = FUNC3(dev->of_node, "ti,ctrl_mod", 0);
	if (!node)
		return NULL;

	dev = FUNC0(&platform_bus_type, NULL, node, match);
	FUNC2(node);
	if (!dev)
		return NULL;

	ctrl_usb = FUNC1(dev);
	FUNC4(dev);
	if (!ctrl_usb)
		return NULL;
	return &ctrl_usb->phy_ctrl;
}