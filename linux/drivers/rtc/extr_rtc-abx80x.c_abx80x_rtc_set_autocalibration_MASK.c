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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ABX8XX_CFG_KEY_OSC ; 
 int ABX8XX_OSC_ACAL_1024 ; 
 int ABX8XX_OSC_ACAL_512 ; 
 int /*<<< orphan*/  ABX8XX_REG_CFG_KEY ; 
 int /*<<< orphan*/  ABX8XX_REG_OSC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
					  int autocalibration)
{
	struct i2c_client *client = FUNC3(dev);
	int retval, flags = 0;

	if ((autocalibration != 0) && (autocalibration != 1024) &&
	    (autocalibration != 512)) {
		FUNC0(dev, "autocalibration value outside permitted range\n");
		return -EINVAL;
	}

	flags = FUNC1(client, ABX8XX_REG_OSC);
	if (flags < 0)
		return flags;

	if (autocalibration == 0) {
		flags &= ~(ABX8XX_OSC_ACAL_512 | ABX8XX_OSC_ACAL_1024);
	} else if (autocalibration == 1024) {
		/* 1024 autocalibration is 0x10 */
		flags |= ABX8XX_OSC_ACAL_1024;
		flags &= ~(ABX8XX_OSC_ACAL_512);
	} else {
		/* 512 autocalibration is 0x11 */
		flags |= (ABX8XX_OSC_ACAL_1024 | ABX8XX_OSC_ACAL_512);
	}

	/* Unlock write access to Oscillator Control Register */
	retval = FUNC2(client, ABX8XX_REG_CFG_KEY,
					   ABX8XX_CFG_KEY_OSC);
	if (retval < 0) {
		FUNC0(dev, "Failed to write CONFIG_KEY register\n");
		return retval;
	}

	retval = FUNC2(client, ABX8XX_REG_OSC, flags);

	return retval;
}