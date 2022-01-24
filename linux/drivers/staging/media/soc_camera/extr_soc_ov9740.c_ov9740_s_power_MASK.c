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
struct ov9740_priv {int current_enable; int /*<<< orphan*/  clk; int /*<<< orphan*/  current_mf; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int) ; 
 struct soc_camera_subdev_desc* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ) ; 
 struct ov9740_priv* FUNC5 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC6(sd);
	struct soc_camera_subdev_desc *ssdd = FUNC2(client);
	struct ov9740_priv *priv = FUNC5(sd);
	int ret;

	if (on) {
		ret = FUNC4(&client->dev, ssdd, priv->clk);
		if (ret < 0)
			return ret;

		if (priv->current_enable) {
			FUNC0(sd, &priv->current_mf);
			FUNC1(sd, 1);
		}
	} else {
		if (priv->current_enable) {
			FUNC1(sd, 0);
			priv->current_enable = true;
		}

		FUNC3(&client->dev, ssdd, priv->clk);
	}

	return 0;
}