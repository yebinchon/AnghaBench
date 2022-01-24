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
struct TYPE_3__ {struct device_node* of_node; } ;
struct tegra_xusb_port {TYPE_1__ dev; } ;
struct tegra_xusb_usb2_port {int mode; int /*<<< orphan*/  supply; int /*<<< orphan*/  internal; struct tegra_xusb_port base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int USB_DR_MODE_HOST ; 
 int USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  modes ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,char const**) ; 

__attribute__((used)) static int FUNC7(struct tegra_xusb_usb2_port *usb2)
{
	struct tegra_xusb_port *port = &usb2->base;
	struct device_node *np = port->dev.of_node;
	const char *mode;

	usb2->internal = FUNC5(np, "nvidia,internal");

	if (!FUNC6(np, "mode", &mode)) {
		int err = FUNC4(modes, FUNC0(modes), mode);
		if (err < 0) {
			FUNC2(&port->dev, "invalid value %s for \"mode\"\n",
				mode);
			usb2->mode = USB_DR_MODE_UNKNOWN;
		} else {
			usb2->mode = err;
		}
	} else {
		usb2->mode = USB_DR_MODE_HOST;
	}

	usb2->supply = FUNC3(&port->dev, "vbus");
	return FUNC1(usb2->supply);
}