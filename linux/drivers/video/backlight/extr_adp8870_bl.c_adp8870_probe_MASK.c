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
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct backlight_properties {int /*<<< orphan*/  brightness; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct backlight_device {TYPE_1__ dev; } ;
struct adp8870_bl {struct backlight_device* bl; struct adp8870_backlight_platform_data* pdata; int /*<<< orphan*/  revid; int /*<<< orphan*/  lock; scalar_t__ current_brightness; int /*<<< orphan*/  id; struct i2c_client* client; } ;
struct adp8870_backlight_platform_data {scalar_t__ en_ambl_sens; scalar_t__ num_leds; } ;
typedef  int /*<<< orphan*/  props ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ADP8870_MANUFID ; 
 int /*<<< orphan*/  ADP8870_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  ADP8870_MFDVID ; 
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC2 (struct backlight_device*) ; 
 int FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  adp8870_bl_attr_group ; 
 int /*<<< orphan*/  adp8870_bl_ops ; 
 int FUNC4 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 struct adp8870_backlight_platform_data* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct adp8870_bl*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct adp8870_bl* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct adp8870_bl*) ; 
 int /*<<< orphan*/  FUNC16 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	struct backlight_properties props;
	struct backlight_device *bl;
	struct adp8870_bl *data;
	struct adp8870_backlight_platform_data *pdata =
		FUNC10(&client->dev);
	uint8_t reg_val;
	int ret;

	if (!FUNC14(client->adapter,
					I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC9(&client->dev, "SMBUS Byte Data not Supported\n");
		return -EIO;
	}

	if (!pdata) {
		FUNC9(&client->dev, "no platform data?\n");
		return -EINVAL;
	}

	ret = FUNC6(client, ADP8870_MFDVID, &reg_val);
	if (ret < 0)
		return -EIO;

	if (FUNC1(reg_val) != ADP8870_MANUFID) {
		FUNC9(&client->dev, "failed to probe\n");
		return -ENODEV;
	}

	data = FUNC13(&client->dev, sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	data->revid = FUNC0(reg_val);
	data->client = client;
	data->pdata = pdata;
	data->id = id->driver_data;
	data->current_brightness = 0;
	FUNC15(client, data);

	FUNC17(&data->lock);

	FUNC16(&props, 0, sizeof(props));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = props.brightness = ADP8870_MAX_BRIGHTNESS;
	bl = FUNC12(&client->dev,
				FUNC8(&client->dev),
				&client->dev, data, &adp8870_bl_ops, &props);
	if (FUNC2(bl)) {
		FUNC9(&client->dev, "failed to register backlight\n");
		return FUNC3(bl);
	}

	data->bl = bl;

	if (pdata->en_ambl_sens) {
		ret = FUNC18(&bl->dev.kobj,
			&adp8870_bl_attr_group);
		if (ret) {
			FUNC9(&client->dev, "failed to register sysfs\n");
			return ret;
		}
	}

	ret = FUNC4(bl);
	if (ret) {
		ret = -EIO;
		goto out;
	}

	FUNC7(bl);

	FUNC11(&client->dev, "Rev.%d Backlight\n", data->revid);

	if (pdata->num_leds)
		FUNC5(client);

	return 0;

out:
	if (data->pdata->en_ambl_sens)
		FUNC19(&data->bl->dev.kobj,
			&adp8870_bl_attr_group);

	return ret;
}