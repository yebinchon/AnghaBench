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
struct ov9740_priv {int current_enable; scalar_t__ flag_hflip; scalar_t__ flag_vflip; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV9740_IMAGE_ORT ; 
 int /*<<< orphan*/  OV9740_MODE_SELECT ; 
 int /*<<< orphan*/  OV9740_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct ov9740_priv* FUNC3 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int enable)
{
	struct i2c_client *client = FUNC4(sd);
	struct ov9740_priv *priv = FUNC3(sd);
	int ret;

	/* Program orientation register. */
	if (priv->flag_vflip)
		ret = FUNC1(client, OV9740_IMAGE_ORT, 0x2, 0);
	else
		ret = FUNC1(client, OV9740_IMAGE_ORT, 0, 0x2);
	if (ret < 0)
		return ret;

	if (priv->flag_hflip)
		ret = FUNC1(client, OV9740_IMAGE_ORT, 0x1, 0);
	else
		ret = FUNC1(client, OV9740_IMAGE_ORT, 0, 0x1);
	if (ret < 0)
		return ret;

	if (enable) {
		FUNC0(&client->dev, "Enabling Streaming\n");
		/* Start Streaming */
		ret = FUNC2(client, OV9740_MODE_SELECT, 0x01);

	} else {
		FUNC0(&client->dev, "Disabling Streaming\n");
		/* Software Reset */
		ret = FUNC2(client, OV9740_SOFTWARE_RESET, 0x01);
		if (!ret)
			/* Setting Streaming to Standby */
			ret = FUNC2(client, OV9740_MODE_SELECT,
					       0x00);
	}

	priv->current_enable = enable;

	return ret;
}