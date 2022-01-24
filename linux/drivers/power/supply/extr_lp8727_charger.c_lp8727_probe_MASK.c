#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lp8727_platform_data {int dummy; } ;
struct lp8727_chg {TYPE_1__* dev; int /*<<< orphan*/  xfer_lock; struct lp8727_platform_data* pdata; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_I2C_BLOCK ; 
 scalar_t__ FUNC0 (struct lp8727_platform_data*) ; 
 int FUNC1 (struct lp8727_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct lp8727_platform_data* FUNC3 (TYPE_1__*) ; 
 struct lp8727_chg* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lp8727_chg*) ; 
 int FUNC7 (struct lp8727_chg*) ; 
 struct lp8727_platform_data* FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct lp8727_chg*) ; 
 int FUNC10 (struct lp8727_chg*) ; 
 int /*<<< orphan*/  FUNC11 (struct lp8727_chg*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *cl, const struct i2c_device_id *id)
{
	struct lp8727_chg *pchg;
	struct lp8727_platform_data *pdata;
	int ret;

	if (!FUNC5(cl->adapter, I2C_FUNC_SMBUS_I2C_BLOCK))
		return -EIO;

	if (cl->dev.of_node) {
		pdata = FUNC8(&cl->dev);
		if (FUNC0(pdata))
			return FUNC1(pdata);
	} else {
		pdata = FUNC3(&cl->dev);
	}

	pchg = FUNC4(&cl->dev, sizeof(*pchg), GFP_KERNEL);
	if (!pchg)
		return -ENOMEM;

	pchg->client = cl;
	pchg->dev = &cl->dev;
	pchg->pdata = pdata;
	FUNC6(cl, pchg);

	FUNC12(&pchg->xfer_lock);

	ret = FUNC7(pchg);
	if (ret) {
		FUNC2(pchg->dev, "i2c communication err: %d", ret);
		return ret;
	}

	ret = FUNC9(pchg);
	if (ret) {
		FUNC2(pchg->dev, "power supplies register err: %d", ret);
		return ret;
	}

	ret = FUNC10(pchg);
	if (ret) {
		FUNC2(pchg->dev, "irq handler err: %d", ret);
		FUNC11(pchg);
		return ret;
	}

	return 0;
}