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
struct soc_camera_subdev_desc {int dummy; } ;
struct imx074 {int /*<<< orphan*/  clk; int /*<<< orphan*/  subdev; int /*<<< orphan*/ * fmt; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct imx074* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * imx074_colour_fmts ; 
 int /*<<< orphan*/  imx074_subdev_ops ; 
 int FUNC7 (struct i2c_client*) ; 
 struct soc_camera_subdev_desc* FUNC8 (struct i2c_client*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct imx074 *priv;
	struct i2c_adapter *adapter = client->adapter;
	struct soc_camera_subdev_desc *ssdd = FUNC8(client);
	int ret;

	if (!ssdd) {
		FUNC2(&client->dev, "IMX074: missing platform data!\n");
		return -EINVAL;
	}

	if (!FUNC6(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC4(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE\n");
		return -EIO;
	}

	priv = FUNC5(&client->dev, sizeof(struct imx074), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC13(&priv->subdev, client, &imx074_subdev_ops);

	priv->fmt	= &imx074_colour_fmts[0];

	priv->clk = FUNC11(&client->dev, "mclk");
	if (FUNC0(priv->clk)) {
		FUNC3(&client->dev, "Error %ld getting clock\n", FUNC1(priv->clk));
		return -EPROBE_DEFER;
	}

	ret = FUNC9(&client->dev, ssdd);
	if (ret < 0)
		goto epwrinit;

	ret = FUNC7(client);
	if (ret < 0)
		goto eprobe;

	ret = FUNC10(&priv->subdev);
	if (!ret)
		return 0;

epwrinit:
eprobe:
	FUNC12(priv->clk);
	return ret;
}