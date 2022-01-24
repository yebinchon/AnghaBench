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
struct ds1374 {int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1374_REG_CR ; 
 int DS1374_REG_CR_AIE ; 
 int DS1374_REG_CR_WACE ; 
 int DS1374_REG_CR_WDALM ; 
 struct ds1374* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int enabled)
{
	struct i2c_client *client = FUNC5(dev);
	struct ds1374 *ds1374 = FUNC0(client);
	int ret;

	FUNC3(&ds1374->mutex);

	ret = FUNC1(client, DS1374_REG_CR);
	if (ret < 0)
		goto out;

	if (enabled) {
		ret |= DS1374_REG_CR_WACE | DS1374_REG_CR_AIE;
		ret &= ~DS1374_REG_CR_WDALM;
	} else {
		ret &= ~DS1374_REG_CR_WACE;
	}
	ret = FUNC2(client, DS1374_REG_CR, ret);

out:
	FUNC4(&ds1374->mutex);
	return ret;
}