#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct tegra_xusb_port {TYPE_1__ dev; } ;
struct tegra_xusb_usb3_port {int /*<<< orphan*/  supply; int /*<<< orphan*/  internal; int /*<<< orphan*/  port; struct tegra_xusb_port base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tegra_xusb_usb3_port *usb3)
{
	struct tegra_xusb_port *port = &usb3->base;
	struct device_node *np = port->dev.of_node;
	u32 value;
	int err;

	err = FUNC4(np, "nvidia,usb2-companion", &value);
	if (err < 0) {
		FUNC1(&port->dev, "failed to read port: %d\n", err);
		return err;
	}

	usb3->port = value;

	usb3->internal = FUNC3(np, "nvidia,internal");

	usb3->supply = FUNC2(&port->dev, "vbus");
	return FUNC0(usb3->supply);
}