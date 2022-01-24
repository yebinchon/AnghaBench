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
struct v4l2_subdev {int dummy; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct ov5642 {int /*<<< orphan*/  clk; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ov5642_default_regs_finalise ; 
 int /*<<< orphan*/  ov5642_default_regs_init ; 
 int FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct soc_camera_subdev_desc* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ) ; 
 struct ov5642* FUNC5 (struct i2c_client*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC6(sd);
	struct soc_camera_subdev_desc *ssdd = FUNC2(client);
	struct ov5642 *priv = FUNC5(client);
	int ret;

	if (!on)
		return FUNC3(&client->dev, ssdd, priv->clk);

	ret = FUNC4(&client->dev, ssdd, priv->clk);
	if (ret < 0)
		return ret;

	ret = FUNC1(client, ov5642_default_regs_init);
	if (!ret)
		ret = FUNC0(sd);
	if (!ret)
		ret = FUNC1(client, ov5642_default_regs_finalise);

	return ret;
}