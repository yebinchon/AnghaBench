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
struct TYPE_2__ {int /*<<< orphan*/ * type; } ;
struct video_device {TYPE_1__ dev; } ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct mt9t031 {int /*<<< orphan*/  clk; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  mt9t031_dev_type ; 
 struct soc_camera_subdev_desc* FUNC0 (struct i2c_client*) ; 
 struct video_device* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct soc_camera_subdev_desc*,int /*<<< orphan*/ ) ; 
 struct mt9t031* FUNC4 (struct i2c_client*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC5(sd);
	struct soc_camera_subdev_desc *ssdd = FUNC0(client);
	struct video_device *vdev = FUNC1(client);
	struct mt9t031 *mt9t031 = FUNC4(client);
	int ret;

	if (on) {
		ret = FUNC3(&client->dev, ssdd, mt9t031->clk);
		if (ret < 0)
			return ret;
		if (vdev)
			/* Not needed during probing, when vdev isn't available yet */
			vdev->dev.type = &mt9t031_dev_type;
	} else {
		if (vdev)
			vdev->dev.type = NULL;
		FUNC2(&client->dev, ssdd, mt9t031->clk);
	}

	return 0;
}