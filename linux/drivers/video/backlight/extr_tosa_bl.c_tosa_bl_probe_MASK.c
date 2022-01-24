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
struct tosa_bl_data {int comadj; TYPE_3__* bl; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int brightness; int /*<<< orphan*/  power; } ;
struct TYPE_9__ {TYPE_1__ props; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int comadj; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int COMADJ_DEFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  TOSA_GPIO_BL_C20MA ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  bl_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct tosa_bl_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct tosa_bl_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct tosa_bl_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ sharpsl_param ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct backlight_properties props;
	struct tosa_bl_data *data;
	int ret = 0;

	data = FUNC6(&client->dev, sizeof(struct tosa_bl_data),
				GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->comadj = sharpsl_param.comadj == -1 ? COMADJ_DEFAULT : sharpsl_param.comadj;

	ret = FUNC5(&client->dev, TOSA_GPIO_BL_C20MA,
				GPIOF_OUT_INIT_LOW, "backlight");
	if (ret) {
		FUNC3(&data->bl->dev, "Unable to request gpio!\n");
		return ret;
	}

	FUNC7(client, data);
	data->i2c = client;

	FUNC8(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = 512 - 1;
	data->bl = FUNC4(&client->dev, "tosa-bl",
						&client->dev, data, &bl_ops,
						&props);
	if (FUNC0(data->bl)) {
		ret = FUNC1(data->bl);
		goto err_reg;
	}

	data->bl->props.brightness = 69;
	data->bl->props.power = FB_BLANK_UNBLANK;

	FUNC2(data->bl);

	return 0;

err_reg:
	data->bl = NULL;
	return ret;
}