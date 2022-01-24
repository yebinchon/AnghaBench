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
typedef  int u8 ;
struct usb4604 {int /*<<< orphan*/  mode; struct device* dev; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  USB4604_MODE_HUB ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct i2c_client*,int*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb4604*,int) ; 

__attribute__((used)) static int FUNC5(struct usb4604 *hub)
{
	struct device *dev = hub->dev;
	struct i2c_client *client = FUNC3(dev);
	int err;
	u8 connect_cmd[] = { 0xaa, 0x55, 0x00 };

	FUNC4(hub, 1);

	err = FUNC2(client, connect_cmd, FUNC0(connect_cmd));
	if (err < 0) {
		FUNC4(hub, 0);
		return err;
	}

	hub->mode = USB4604_MODE_HUB;
	FUNC1(dev, "switched to HUB mode\n");

	return 0;
}