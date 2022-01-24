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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  REG_OFFSET ; 
 int REG_OFFSET_MODE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 struct i2c_client* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, long *offset)
{
	struct i2c_client *client = FUNC1(dev);
	int err;
	u8 value;
	s8 val;

	err = FUNC0(client, REG_OFFSET, &value);
	if (err < 0)
		return err;

	/* sign extend the 7-bit offset value */
	val = value << 1;
	*offset = (value & REG_OFFSET_MODE ? 4069 : 4340) * (val >> 1);

	return 0;
}