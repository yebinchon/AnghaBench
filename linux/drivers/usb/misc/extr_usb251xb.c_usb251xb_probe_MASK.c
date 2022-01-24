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
struct usb251xb_data {int dummy; } ;
struct usb251xb {struct device* dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC3 (struct usb251xb*) ; 
 int FUNC4 (struct usb251xb*) ; 
 int FUNC5 (struct usb251xb*,struct usb251xb_data*) ; 
 int /*<<< orphan*/  usb251xb_of_match ; 

__attribute__((used)) static int FUNC6(struct usb251xb *hub)
{
	struct device *dev = hub->dev;
	struct device_node *np = dev->of_node;
	const struct of_device_id *of_id = FUNC2(usb251xb_of_match,
							   dev);
	int err;

	if (np && of_id) {
		err = FUNC5(hub,
					  (struct usb251xb_data *)of_id->data);
		if (err) {
			FUNC0(dev, "failed to get ofdata: %d\n", err);
			return err;
		}
	}

	/*
	 * usb251x SMBus-slave SCL lane is muxed with CFG_SEL0 pin. So if anyone
	 * tries to work with the bus at the moment the hub reset is released,
	 * it may cause an invalid config being latched by usb251x. Particularly
	 * one of the config modes makes the hub loading a default registers
	 * value without SMBus-slave interface activation. If the hub
	 * accidentally gets this mode, this will cause the driver SMBus-
	 * functions failure. Normally we could just lock the SMBus-segment the
	 * hub i2c-interface resides for the device-specific reset timing. But
	 * the GPIO controller, which is used to handle the hub reset, might be
	 * placed at the same i2c-bus segment. In this case an error should be
	 * returned since we can't safely use the GPIO controller to clear the
	 * reset state (it may affect the hub configuration) and we can't lock
	 * the i2c-bus segment (it will cause a deadlock).
	 */
	err = FUNC3(hub);
	if (err)
		return err;

	err = FUNC4(hub);
	if (err) {
		FUNC0(dev, "Failed to connect hub (%d)\n", err);
		return err;
	}

	FUNC1(dev, "Hub probed successfully\n");

	return 0;
}