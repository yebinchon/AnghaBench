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
typedef  enum sbs_battery_mode { ____Placeholder_sbs_battery_mode } sbs_battery_mode ;

/* Variables and functions */
 int BATTERY_MODE_AMPS ; 
 int BATTERY_MODE_MASK ; 
 int /*<<< orphan*/  BATTERY_MODE_OFFSET ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static enum sbs_battery_mode FUNC3(struct i2c_client *client,
	enum sbs_battery_mode mode)
{
	int ret, original_val;

	original_val = FUNC0(client, BATTERY_MODE_OFFSET);
	if (original_val < 0)
		return original_val;

	if ((original_val & BATTERY_MODE_MASK) == mode)
		return mode;

	if (mode == BATTERY_MODE_AMPS)
		ret = original_val & ~BATTERY_MODE_MASK;
	else
		ret = original_val | BATTERY_MODE_MASK;

	ret = FUNC1(client, BATTERY_MODE_OFFSET, ret);
	if (ret < 0)
		return ret;

	FUNC2(1000, 2000);

	return original_val & BATTERY_MODE_MASK;
}