#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_subdev_desc {int dummy; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_7__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_8__ {TYPE_3__* ctrl_handler; } ;
struct mt9t031 {int xskip; int yskip; TYPE_3__ hdl; int /*<<< orphan*/  clk; TYPE_1__ rect; scalar_t__ y_skip_top; int /*<<< orphan*/  autoexposure; TYPE_2__ subdev; int /*<<< orphan*/  exposure; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT9T031_COLUMN_SKIP ; 
 int /*<<< orphan*/  MT9T031_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9T031_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9T031_ROW_SKIP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct mt9t031* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt9t031_ctrl_ops ; 
 int /*<<< orphan*/  mt9t031_subdev_ops ; 
 int FUNC6 (struct i2c_client*) ; 
 struct soc_camera_subdev_desc* FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			 const struct i2c_device_id *did)
{
	struct mt9t031 *mt9t031;
	struct soc_camera_subdev_desc *ssdd = FUNC7(client);
	struct i2c_adapter *adapter = client->adapter;
	int ret;

	if (!ssdd) {
		FUNC2(&client->dev, "MT9T031 driver needs platform data\n");
		return -EINVAL;
	}

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC3(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	mt9t031 = FUNC4(&client->dev, sizeof(struct mt9t031), GFP_KERNEL);
	if (!mt9t031)
		return -ENOMEM;

	FUNC15(&mt9t031->subdev, client, &mt9t031_subdev_ops);
	FUNC12(&mt9t031->hdl, 5);
	FUNC13(&mt9t031->hdl, &mt9t031_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC13(&mt9t031->hdl, &mt9t031_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC13(&mt9t031->hdl, &mt9t031_ctrl_ops,
			V4L2_CID_GAIN, 0, 127, 1, 64);

	/*
	 * Simulated autoexposure. If enabled, we calculate shutter width
	 * ourselves in the driver based on vertical blanking and frame width
	 */
	mt9t031->autoexposure = FUNC14(&mt9t031->hdl,
			&mt9t031_ctrl_ops, V4L2_CID_EXPOSURE_AUTO, 1, 0,
			V4L2_EXPOSURE_AUTO);
	mt9t031->exposure = FUNC13(&mt9t031->hdl, &mt9t031_ctrl_ops,
			V4L2_CID_EXPOSURE, 1, 255, 1, 255);

	mt9t031->subdev.ctrl_handler = &mt9t031->hdl;
	if (mt9t031->hdl.error)
		return mt9t031->hdl.error;

	FUNC10(2, &mt9t031->autoexposure,
				V4L2_EXPOSURE_MANUAL, true);

	mt9t031->y_skip_top	= 0;
	mt9t031->rect.left	= MT9T031_COLUMN_SKIP;
	mt9t031->rect.top	= MT9T031_ROW_SKIP;
	mt9t031->rect.width	= MT9T031_MAX_WIDTH;
	mt9t031->rect.height	= MT9T031_MAX_HEIGHT;

	mt9t031->xskip = 1;
	mt9t031->yskip = 1;

	mt9t031->clk = FUNC8(&client->dev, "mclk");
	if (FUNC0(mt9t031->clk)) {
		ret = FUNC1(mt9t031->clk);
		goto eclkget;
	}

	ret = FUNC6(client);
	if (ret) {
		FUNC9(mt9t031->clk);
eclkget:
		FUNC11(&mt9t031->hdl);
	}

	return ret;
}