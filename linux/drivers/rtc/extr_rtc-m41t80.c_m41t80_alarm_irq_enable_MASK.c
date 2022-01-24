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
 int M41T80_ALMON_AFE ; 
 int /*<<< orphan*/  M41T80_REG_ALARM_MON ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enabled)
{
	struct i2c_client *client = FUNC3(dev);
	int flags, retval;

	flags = FUNC1(client, M41T80_REG_ALARM_MON);
	if (flags < 0)
		return flags;

	if (enabled)
		flags |= M41T80_ALMON_AFE;
	else
		flags &= ~M41T80_ALMON_AFE;

	retval = FUNC2(client, M41T80_REG_ALARM_MON, flags);
	if (retval < 0) {
		FUNC0(dev, "Unable to enable alarm IRQ %d\n", retval);
		return retval;
	}
	return 0;
}