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
typedef  int u16 ;
struct lp3972_platform_data {int dummy; } ;
struct lp3972 {int /*<<< orphan*/  io_lock; int /*<<< orphan*/ * dev; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LP3972_SYS_CONTROL1_REG ; 
 int SYS_CONTROL1_INIT_MASK ; 
 int SYS_CONTROL1_INIT_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct lp3972_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct lp3972* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lp3972*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct lp3972*,struct lp3972_platform_data*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct lp3972 *lp3972;
	struct lp3972_platform_data *pdata = FUNC2(&i2c->dev);
	int ret;
	u16 val;

	if (!pdata) {
		FUNC0(&i2c->dev, "No platform init data supplied\n");
		return -ENODEV;
	}

	lp3972 = FUNC3(&i2c->dev, sizeof(struct lp3972), GFP_KERNEL);
	if (!lp3972)
		return -ENOMEM;

	lp3972->i2c = i2c;
	lp3972->dev = &i2c->dev;

	FUNC6(&lp3972->io_lock);

	/* Detect LP3972 */
	ret = FUNC5(i2c, LP3972_SYS_CONTROL1_REG, 1, &val);
	if (ret == 0 &&
		(val & SYS_CONTROL1_INIT_MASK) != SYS_CONTROL1_INIT_VAL) {
		ret = -ENODEV;
		FUNC1(&i2c->dev, "chip reported: val = 0x%x\n", val);
	}
	if (ret < 0) {
		FUNC1(&i2c->dev, "failed to detect device. ret = %d\n", ret);
		return ret;
	}

	ret = FUNC7(lp3972, pdata);
	if (ret < 0)
		return ret;

	FUNC4(i2c, lp3972);
	return 0;
}