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
struct soc_camera_subdev_desc {struct mt9v022_platform_data* drv_priv; } ;
struct mt9v022_platform_data {int /*<<< orphan*/  y_skip_top; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_7__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_8__ {TYPE_3__* ctrl_handler; } ;
struct mt9v022 {TYPE_3__ hdl; int /*<<< orphan*/  clk; TYPE_1__ rect; int /*<<< orphan*/  y_skip_top; int /*<<< orphan*/  chip_control; void* autogain; void* autoexposure; TYPE_2__ subdev; void* vblank; void* hblank; void* exposure; void* gain; } ;
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
 int /*<<< orphan*/  MT9V022_CHIP_CONTROL_DEFAULT ; 
 int /*<<< orphan*/  MT9V022_COLUMN_SKIP ; 
 int MT9V022_HORIZONTAL_BLANKING_DEF ; 
 int MT9V022_HORIZONTAL_BLANKING_MAX ; 
 int MT9V022_HORIZONTAL_BLANKING_MIN ; 
 int /*<<< orphan*/  MT9V022_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9V022_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9V022_ROW_SKIP ; 
 int MT9V022_VERTICAL_BLANKING_DEF ; 
 int MT9V022_VERTICAL_BLANKING_MAX ; 
 int MT9V022_VERTICAL_BLANKING_MIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HBLANK ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VBLANK ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct mt9v022* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt9v022_ctrl_ops ; 
 int /*<<< orphan*/  mt9v022_subdev_ops ; 
 int FUNC6 (struct i2c_client*) ; 
 struct soc_camera_subdev_desc* FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 void* FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 void* FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			 const struct i2c_device_id *did)
{
	struct mt9v022 *mt9v022;
	struct soc_camera_subdev_desc *ssdd = FUNC7(client);
	struct i2c_adapter *adapter = client->adapter;
	struct mt9v022_platform_data *pdata;
	int ret;

	if (!ssdd) {
		FUNC2(&client->dev, "MT9V022 driver needs platform data\n");
		return -EINVAL;
	}

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC3(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	mt9v022 = FUNC4(&client->dev, sizeof(struct mt9v022), GFP_KERNEL);
	if (!mt9v022)
		return -ENOMEM;

	pdata = ssdd->drv_priv;
	FUNC15(&mt9v022->subdev, client, &mt9v022_subdev_ops);
	FUNC12(&mt9v022->hdl, 6);
	FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	mt9v022->autogain = FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
	mt9v022->gain = FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_GAIN, 0, 127, 1, 64);

	/*
	 * Simulated autoexposure. If enabled, we calculate shutter width
	 * ourselves in the driver based on vertical blanking and frame width
	 */
	mt9v022->autoexposure = FUNC14(&mt9v022->hdl,
			&mt9v022_ctrl_ops, V4L2_CID_EXPOSURE_AUTO, 1, 0,
			V4L2_EXPOSURE_AUTO);
	mt9v022->exposure = FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_EXPOSURE, 1, 255, 1, 255);

	mt9v022->hblank = FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_HBLANK, MT9V022_HORIZONTAL_BLANKING_MIN,
			MT9V022_HORIZONTAL_BLANKING_MAX, 1,
			MT9V022_HORIZONTAL_BLANKING_DEF);

	mt9v022->vblank = FUNC13(&mt9v022->hdl, &mt9v022_ctrl_ops,
			V4L2_CID_VBLANK, MT9V022_VERTICAL_BLANKING_MIN,
			MT9V022_VERTICAL_BLANKING_MAX, 1,
			MT9V022_VERTICAL_BLANKING_DEF);

	mt9v022->subdev.ctrl_handler = &mt9v022->hdl;
	if (mt9v022->hdl.error) {
		int err = mt9v022->hdl.error;

		FUNC2(&client->dev, "control initialisation err %d\n", err);
		return err;
	}
	FUNC10(2, &mt9v022->autoexposure,
				V4L2_EXPOSURE_MANUAL, true);
	FUNC10(2, &mt9v022->autogain, 0, true);

	mt9v022->chip_control = MT9V022_CHIP_CONTROL_DEFAULT;

	/*
	 * On some platforms the first read out line is corrupted.
	 * Workaround it by skipping if indicated by platform data.
	 */
	mt9v022->y_skip_top	= pdata ? pdata->y_skip_top : 0;
	mt9v022->rect.left	= MT9V022_COLUMN_SKIP;
	mt9v022->rect.top	= MT9V022_ROW_SKIP;
	mt9v022->rect.width	= MT9V022_MAX_WIDTH;
	mt9v022->rect.height	= MT9V022_MAX_HEIGHT;

	mt9v022->clk = FUNC8(&client->dev, "mclk");
	if (FUNC0(mt9v022->clk)) {
		ret = FUNC1(mt9v022->clk);
		goto eclkget;
	}

	ret = FUNC6(client);
	if (ret) {
		FUNC9(mt9v022->clk);
eclkget:
		FUNC11(&mt9v022->hdl);
	}

	return ret;
}