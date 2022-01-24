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
struct i2c_client {int dummy; } ;
struct backlight_device {int dummy; } ;
struct adp8870_bl {int cached_daylight_max; int current_brightness; TYPE_1__* pdata; struct i2c_client* client; } ;
struct TYPE_2__ {scalar_t__ en_ambl_sens; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADP8870_BLMX1 ; 
 int ADP8870_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  ADP8870_MDCR ; 
 int /*<<< orphan*/  CMP_AUTOEN ; 
 int /*<<< orphan*/  DIM_EN ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adp8870_bl* FUNC3 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bl, int brightness)
{
	struct adp8870_bl *data = FUNC3(bl);
	struct i2c_client *client = data->client;
	int ret = 0;

	if (data->pdata->en_ambl_sens) {
		if ((brightness > 0) && (brightness < ADP8870_MAX_BRIGHTNESS)) {
			/* Disable Ambient Light auto adjust */
			ret = FUNC0(client, ADP8870_MDCR,
					CMP_AUTOEN);
			if (ret)
				return ret;
			ret = FUNC2(client, ADP8870_BLMX1, brightness);
			if (ret)
				return ret;
		} else {
			/*
			 * MAX_BRIGHTNESS -> Enable Ambient Light auto adjust
			 * restore daylight l1 sysfs brightness
			 */
			ret = FUNC2(client, ADP8870_BLMX1,
					 data->cached_daylight_max);
			if (ret)
				return ret;

			ret = FUNC1(client, ADP8870_MDCR,
					 CMP_AUTOEN);
			if (ret)
				return ret;
		}
	} else {
		ret = FUNC2(client, ADP8870_BLMX1, brightness);
		if (ret)
			return ret;
	}

	if (data->current_brightness && brightness == 0)
		ret = FUNC1(client,
				ADP8870_MDCR, DIM_EN);
	else if (data->current_brightness == 0 && brightness)
		ret = FUNC0(client,
				ADP8870_MDCR, DIM_EN);

	if (!ret)
		data->current_brightness = brightness;

	return ret;
}