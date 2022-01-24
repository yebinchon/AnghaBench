#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int class; int retries; TYPE_3__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct i2c_device {unsigned long smba; TYPE_1__ adapter; int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FEATURE_BLOCK_BUFFER ; 
 int /*<<< orphan*/  FEATURE_I2C_BLOCK_READ ; 
 int /*<<< orphan*/  FEATURE_IDF ; 
 int /*<<< orphan*/  FEATURE_SMBUS_PEC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_device* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct i2c_device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct i2c_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pldev)
{
	int err;
	struct i2c_device *priv;
	struct resource *res;

	priv = FUNC2(&pldev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC4(&priv->adapter, priv);
	priv->adapter.owner = THIS_MODULE;
	priv->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	priv->adapter.algo = &smbus_algorithm;

	res = FUNC5(pldev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;

	priv->smba = (unsigned long)FUNC1(&pldev->dev,
							 res->start,
							 FUNC7(res));
	if (!priv->smba)
		return -ENOMEM;

	FUNC6(pldev, priv);

	priv->features |= FEATURE_IDF;
	priv->features |= FEATURE_I2C_BLOCK_READ;
	priv->features |= FEATURE_SMBUS_PEC;
	priv->features |= FEATURE_BLOCK_BUFFER;

	//init_MUTEX(&lddata->sem);

	/* set up the sysfs linkage to our parent device */
	priv->adapter.dev.parent = &pldev->dev;

	/* Retry up to 3 times on lost arbitration */
	priv->adapter.retries = 3;

	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
	FUNC8(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");

	err = FUNC3(&priv->adapter);
	if (err) {
		FUNC0(&priv->adapter.dev, "Failed to add SMBus adapter\n");
		return err;
	}

	return 0;
}