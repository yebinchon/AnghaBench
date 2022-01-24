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
struct lp3971_platform_data {int dummy; } ;
struct lp3971 {int /*<<< orphan*/  io_lock; int /*<<< orphan*/ * dev; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LP3971_SYS_CONTROL1_REG ; 
 int SYS_CONTROL1_INIT_MASK ; 
 int SYS_CONTROL1_INIT_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct lp3971_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct lp3971* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lp3971*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct lp3971*,struct lp3971_platform_data*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct lp3971 *lp3971;
	struct lp3971_platform_data *pdata = FUNC2(&i2c->dev);
	int ret;
	u16 val;

	if (!pdata) {
		FUNC0(&i2c->dev, "No platform init data supplied\n");
		return -ENODEV;
	}

	lp3971 = FUNC3(&i2c->dev, sizeof(struct lp3971), GFP_KERNEL);
	if (lp3971 == NULL)
		return -ENOMEM;

	lp3971->i2c = i2c;
	lp3971->dev = &i2c->dev;

	FUNC6(&lp3971->io_lock);

	/* Detect LP3971 */
	ret = FUNC5(i2c, LP3971_SYS_CONTROL1_REG, 1, &val);
	if (ret == 0 && (val & SYS_CONTROL1_INIT_MASK) != SYS_CONTROL1_INIT_VAL)
		ret = -ENODEV;
	if (ret < 0) {
		FUNC1(&i2c->dev, "failed to detect device\n");
		return ret;
	}

	ret = FUNC7(lp3971, pdata);
	if (ret < 0)
		return ret;

	FUNC4(i2c, lp3971);
	return 0;
}