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
struct imx074 {int /*<<< orphan*/  clk; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct soc_camera_subdev_desc* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ,int) ; 
 struct imx074* FUNC2 (struct i2c_client*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC3(sd);
	struct soc_camera_subdev_desc *ssdd = FUNC0(client);
	struct imx074 *priv = FUNC2(client);

	return FUNC1(&client->dev, ssdd, priv->clk, on);
}