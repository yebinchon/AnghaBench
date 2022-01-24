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
struct v4l2_mbus_config {int dummy; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9T031_PIXEL_CLOCK_CONTROL ; 
 int V4L2_MBUS_PCLK_SAMPLE_FALLING ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct soc_camera_subdev_desc*,struct v4l2_mbus_config const*) ; 
 struct soc_camera_subdev_desc* FUNC3 (struct i2c_client*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				const struct v4l2_mbus_config *cfg)
{
	struct i2c_client *client = FUNC4(sd);
	struct soc_camera_subdev_desc *ssdd = FUNC3(client);

	if (FUNC2(ssdd, cfg) &
	    V4L2_MBUS_PCLK_SAMPLE_FALLING)
		return FUNC0(client, MT9T031_PIXEL_CLOCK_CONTROL, 0x8000);
	else
		return FUNC1(client, MT9T031_PIXEL_CLOCK_CONTROL, 0x8000);
}