#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lp855x {int /*<<< orphan*/  bl; TYPE_1__* dev; int /*<<< orphan*/ * enable; int /*<<< orphan*/ * supply; int /*<<< orphan*/  mode; TYPE_4__* pdata; int /*<<< orphan*/  chip_id; int /*<<< orphan*/  chipname; struct i2c_client* client; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_8__ {scalar_t__ period_ns; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_I2C_BLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PWM_BASED ; 
 int /*<<< orphan*/  REGISTER_BASED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 TYPE_4__* FUNC4 (TYPE_1__*) ; 
 struct lp855x* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct lp855x*) ; 
 int /*<<< orphan*/  lp855x_attr_group ; 
 int FUNC10 (struct lp855x*) ; 
 int FUNC11 (struct lp855x*) ; 
 int FUNC12 (struct lp855x*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *cl, const struct i2c_device_id *id)
{
	struct lp855x *lp;
	int ret;

	if (!FUNC8(cl->adapter, I2C_FUNC_SMBUS_I2C_BLOCK))
		return -EIO;

	lp = FUNC5(&cl->dev, sizeof(struct lp855x), GFP_KERNEL);
	if (!lp)
		return -ENOMEM;

	lp->client = cl;
	lp->dev = &cl->dev;
	lp->chipname = id->name;
	lp->chip_id = id->driver_data;
	lp->pdata = FUNC4(&cl->dev);

	if (!lp->pdata) {
		ret = FUNC12(lp);
		if (ret < 0)
			return ret;
	}

	if (lp->pdata->period_ns > 0)
		lp->mode = PWM_BASED;
	else
		lp->mode = REGISTER_BASED;

	lp->supply = FUNC6(lp->dev, "power");
	if (FUNC0(lp->supply)) {
		if (FUNC1(lp->supply) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		lp->supply = NULL;
	}

	lp->enable = FUNC7(lp->dev, "enable");
	if (FUNC0(lp->enable)) {
		ret = FUNC1(lp->enable);
		if (ret == -ENODEV) {
			lp->enable = NULL;
		} else {
			if (ret != -EPROBE_DEFER)
				FUNC3(lp->dev, "error getting enable regulator: %d\n",
					ret);
			return ret;
		}
	}

	if (lp->supply) {
		ret = FUNC13(lp->supply);
		if (ret < 0) {
			FUNC3(&cl->dev, "failed to enable supply: %d\n", ret);
			return ret;
		}
	}

	if (lp->enable) {
		ret = FUNC13(lp->enable);
		if (ret < 0) {
			FUNC3(lp->dev, "failed to enable vddio: %d\n", ret);
			return ret;
		}

		/*
		 * LP8555 datasheet says t_RESPONSE (time between VDDIO and
		 * I2C) is 1ms.
		 */
		FUNC15(1000, 2000);
	}

	FUNC9(cl, lp);

	ret = FUNC11(lp);
	if (ret) {
		FUNC3(lp->dev, "device config err: %d", ret);
		return ret;
	}

	ret = FUNC10(lp);
	if (ret) {
		FUNC3(lp->dev,
			"failed to register backlight. err: %d\n", ret);
		return ret;
	}

	ret = FUNC14(&lp->dev->kobj, &lp855x_attr_group);
	if (ret) {
		FUNC3(lp->dev, "failed to register sysfs. err: %d\n", ret);
		return ret;
	}

	FUNC2(lp->bl);
	return 0;
}