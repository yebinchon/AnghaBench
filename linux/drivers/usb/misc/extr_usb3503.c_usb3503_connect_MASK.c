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
struct usb3503 {int port_off_mask; int /*<<< orphan*/  mode; int /*<<< orphan*/  gpio_connect; scalar_t__ regmap; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB3503_CFG1 ; 
 int /*<<< orphan*/  USB3503_MODE_HUB ; 
 int /*<<< orphan*/  USB3503_PDS ; 
 int USB3503_SELF_BUS_PWR ; 
 int USB3503_SPILOCK_CONFIG ; 
 int USB3503_SPILOCK_CONNECT ; 
 int /*<<< orphan*/  USB3503_SP_ILOCK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb3503*,int) ; 

__attribute__((used)) static int FUNC7(struct usb3503 *hub)
{
	struct device *dev = hub->dev;
	int err;

	FUNC6(hub, 1);

	if (hub->regmap) {
		/* SP_ILOCK: set connect_n, config_n for config */
		err = FUNC5(hub->regmap, USB3503_SP_ILOCK,
			   (USB3503_SPILOCK_CONNECT
				 | USB3503_SPILOCK_CONFIG));
		if (err < 0) {
			FUNC0(dev, "SP_ILOCK failed (%d)\n", err);
			return err;
		}

		/* PDS : Set the ports which are disabled in self-powered mode. */
		if (hub->port_off_mask) {
			err = FUNC4(hub->regmap, USB3503_PDS,
					hub->port_off_mask,
					hub->port_off_mask);
			if (err < 0) {
				FUNC0(dev, "PDS failed (%d)\n", err);
				return err;
			}
		}

		/* CFG1 : Set SELF_BUS_PWR, this enables self-powered operation. */
		err = FUNC4(hub->regmap, USB3503_CFG1,
					 USB3503_SELF_BUS_PWR,
					 USB3503_SELF_BUS_PWR);
		if (err < 0) {
			FUNC0(dev, "CFG1 failed (%d)\n", err);
			return err;
		}

		/* SP_LOCK: clear connect_n, config_n for hub connect */
		err = FUNC4(hub->regmap, USB3503_SP_ILOCK,
					 (USB3503_SPILOCK_CONNECT
					  | USB3503_SPILOCK_CONFIG), 0);
		if (err < 0) {
			FUNC0(dev, "SP_ILOCK failed (%d)\n", err);
			return err;
		}
	}

	if (FUNC2(hub->gpio_connect))
		FUNC3(hub->gpio_connect, 1);

	hub->mode = USB3503_MODE_HUB;
	FUNC1(dev, "switched to HUB mode\n");

	return 0;
}