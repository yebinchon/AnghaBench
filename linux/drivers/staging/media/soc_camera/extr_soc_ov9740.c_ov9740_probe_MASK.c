#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_subdev_desc {int dummy; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_5__ {TYPE_2__* ctrl_handler; } ;
struct ov9740_priv {TYPE_2__ hdl; int /*<<< orphan*/  clk; TYPE_1__ subdev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ov9740_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ov9740_ctrl_ops ; 
 int /*<<< orphan*/  ov9740_subdev_ops ; 
 int FUNC4 (struct i2c_client*) ; 
 struct soc_camera_subdev_desc* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct ov9740_priv *priv;
	struct soc_camera_subdev_desc *ssdd = FUNC5(client);
	int ret;

	if (!ssdd) {
		FUNC2(&client->dev, "Missing platform_data for driver\n");
		return -EINVAL;
	}

	priv = FUNC3(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC11(&priv->subdev, client, &ov9740_subdev_ops);
	FUNC9(&priv->hdl, 13);
	FUNC10(&priv->hdl, &ov9740_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC10(&priv->hdl, &ov9740_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	priv->subdev.ctrl_handler = &priv->hdl;
	if (priv->hdl.error)
		return priv->hdl.error;

	priv->clk = FUNC6(&client->dev, "mclk");
	if (FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		goto eclkget;
	}

	ret = FUNC4(client);
	if (ret < 0) {
		FUNC7(priv->clk);
eclkget:
		FUNC8(&priv->hdl);
	}

	return ret;
}