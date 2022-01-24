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
typedef  int u16 ;
struct video_device {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9t031 {int xskip; int yskip; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9T031_COLUMN_ADDRESS_MODE ; 
 int /*<<< orphan*/  MT9T031_ROW_ADDRESS_MODE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC2 (struct video_device*) ; 
 struct mt9t031* FUNC3 (struct i2c_client*) ; 
 struct video_device* FUNC4 (struct device*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct video_device *vdev = FUNC4(dev);
	struct v4l2_subdev *sd = FUNC2(vdev);
	struct i2c_client *client = FUNC5(sd);
	struct mt9t031 *mt9t031 = FUNC3(client);

	int ret;
	u16 xbin, ybin;

	xbin = FUNC0(mt9t031->xskip, (u16)3);
	ybin = FUNC0(mt9t031->yskip, (u16)3);

	ret = FUNC1(client, MT9T031_COLUMN_ADDRESS_MODE,
		((xbin - 1) << 4) | (mt9t031->xskip - 1));
	if (ret < 0)
		return ret;

	ret = FUNC1(client, MT9T031_ROW_ADDRESS_MODE,
		((ybin - 1) << 4) | (mt9t031->yskip - 1));
	if (ret < 0)
		return ret;

	return 0;
}