#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_subdev_desc {int dummy; } ;
struct TYPE_2__ {int width; int height; int left; int top; } ;
struct ov5642 {int total_width; int /*<<< orphan*/  clk; int /*<<< orphan*/  total_height; TYPE_1__ crop_rect; int /*<<< orphan*/ * fmt; int /*<<< orphan*/  subdev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BLANKING_EXTRA_WIDTH ; 
 int /*<<< orphan*/  BLANKING_MIN_HEIGHT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int OV5642_DEFAULT_HEIGHT ; 
 int OV5642_DEFAULT_WIDTH ; 
 int OV5642_MAX_HEIGHT ; 
 int OV5642_MAX_WIDTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ov5642* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ov5642_colour_fmts ; 
 int /*<<< orphan*/  ov5642_subdev_ops ; 
 int FUNC4 (struct i2c_client*) ; 
 struct soc_camera_subdev_desc* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct ov5642 *priv;
	struct soc_camera_subdev_desc *ssdd = FUNC5(client);
	int ret;

	if (!ssdd) {
		FUNC2(&client->dev, "OV5642: missing platform data!\n");
		return -EINVAL;
	}

	priv = FUNC3(&client->dev, sizeof(struct ov5642), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC8(&priv->subdev, client, &ov5642_subdev_ops);

	priv->fmt		= &ov5642_colour_fmts[0];

	priv->crop_rect.width	= OV5642_DEFAULT_WIDTH;
	priv->crop_rect.height	= OV5642_DEFAULT_HEIGHT;
	priv->crop_rect.left	= (OV5642_MAX_WIDTH - OV5642_DEFAULT_WIDTH) / 2;
	priv->crop_rect.top	= (OV5642_MAX_HEIGHT - OV5642_DEFAULT_HEIGHT) / 2;
	priv->total_width = OV5642_DEFAULT_WIDTH + BLANKING_EXTRA_WIDTH;
	priv->total_height = BLANKING_MIN_HEIGHT;

	priv->clk = FUNC6(&client->dev, "mclk");
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	ret = FUNC4(client);
	if (ret < 0)
		FUNC7(priv->clk);

	return ret;
}