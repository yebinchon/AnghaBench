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
typedef  long u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int) ; 
 int /*<<< orphan*/  REG_OFFSET ; 
 long REG_OFFSET_MODE ; 
 scalar_t__ FUNC1 (long) ; 
 long FUNC2 (int /*<<< orphan*/ ,long,long) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, long offset)
{
	struct i2c_client *client = FUNC4(dev);
	long reg_m0, reg_m1;
	u8 value;

	reg_m0 = FUNC2(FUNC0(offset, 4340), -64L, 63L);
	reg_m1 = FUNC2(FUNC0(offset, 4069), -64L, 63L);

	if (FUNC1(reg_m0 * 4340 - offset) < FUNC1(reg_m1 * 4069 - offset))
		value = reg_m0 & 0x7f;
	else
		value = (reg_m1 & 0x7f) | REG_OFFSET_MODE;

	return FUNC3(client, REG_OFFSET, value);
}