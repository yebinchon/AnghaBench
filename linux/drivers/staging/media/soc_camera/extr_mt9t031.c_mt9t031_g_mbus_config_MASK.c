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
struct v4l2_mbus_config {int flags; int /*<<< orphan*/  type; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int V4L2_MBUS_DATA_ACTIVE_HIGH ; 
 int V4L2_MBUS_HSYNC_ACTIVE_HIGH ; 
 int V4L2_MBUS_MASTER ; 
 int /*<<< orphan*/  V4L2_MBUS_PARALLEL ; 
 int V4L2_MBUS_PCLK_SAMPLE_FALLING ; 
 int V4L2_MBUS_PCLK_SAMPLE_RISING ; 
 int V4L2_MBUS_VSYNC_ACTIVE_HIGH ; 
 int FUNC0 (struct soc_camera_subdev_desc*,struct v4l2_mbus_config*) ; 
 struct soc_camera_subdev_desc* FUNC1 (struct i2c_client*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				struct v4l2_mbus_config *cfg)
{
	struct i2c_client *client = FUNC2(sd);
	struct soc_camera_subdev_desc *ssdd = FUNC1(client);

	cfg->flags = V4L2_MBUS_MASTER | V4L2_MBUS_PCLK_SAMPLE_RISING |
		V4L2_MBUS_PCLK_SAMPLE_FALLING | V4L2_MBUS_HSYNC_ACTIVE_HIGH |
		V4L2_MBUS_VSYNC_ACTIVE_HIGH | V4L2_MBUS_DATA_ACTIVE_HIGH;
	cfg->type = V4L2_MBUS_PARALLEL;
	cfg->flags = FUNC0(ssdd, cfg);

	return 0;
}