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
struct usb3503 {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct usb3503* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct usb3503*) ; 
 int FUNC6 (struct usb3503*) ; 
 int /*<<< orphan*/  usb3503_regmap_config ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct usb3503 *hub;
	int err;

	hub = FUNC3(&i2c->dev, sizeof(struct usb3503), GFP_KERNEL);
	if (!hub)
		return -ENOMEM;

	FUNC5(i2c, hub);
	hub->regmap = FUNC4(i2c, &usb3503_regmap_config);
	if (FUNC0(hub->regmap)) {
		err = FUNC1(hub->regmap);
		FUNC2(&i2c->dev, "Failed to initialise regmap: %d\n", err);
		return err;
	}
	hub->dev = &i2c->dev;

	return FUNC6(hub);
}