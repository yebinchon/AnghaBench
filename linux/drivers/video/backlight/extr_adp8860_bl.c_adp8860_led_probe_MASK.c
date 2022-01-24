#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct led_info {int flags; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* brightness; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct adp8860_led {int id; int flags; int /*<<< orphan*/  work; TYPE_1__ cdev; void* new_brightness; struct i2c_client* client; } ;
struct adp8860_bl {struct adp8860_led* led; } ;
struct adp8860_backlight_platform_data {int num_leds; int led_fade_law; int led_on_time; int bl_led_assign; struct led_info* leds; int /*<<< orphan*/  led_fade_out; int /*<<< orphan*/  led_fade_in; } ;

/* Variables and functions */
 int ADP8860_FLAG_LED_MASK ; 
 int /*<<< orphan*/  ADP8860_ISCF ; 
 int /*<<< orphan*/  ADP8860_ISCFR ; 
 int /*<<< orphan*/  ADP8860_ISCT1 ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FLAG_OFFT_SHIFT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* LED_OFF ; 
 int /*<<< orphan*/  adp8860_led_set ; 
 int FUNC2 (struct adp8860_led*) ; 
 int /*<<< orphan*/  adp8860_led_work ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct adp8860_backlight_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 struct adp8860_led* FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct adp8860_bl* FUNC8 (struct i2c_client*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct adp8860_backlight_platform_data *pdata =
		FUNC6(&client->dev);
	struct adp8860_bl *data = FUNC8(client);
	struct adp8860_led *led, *led_dat;
	struct led_info *cur_led;
	int ret, i;

	led = FUNC7(&client->dev, pdata->num_leds, sizeof(*led),
				GFP_KERNEL);
	if (led == NULL)
		return -ENOMEM;

	ret = FUNC3(client, ADP8860_ISCFR, pdata->led_fade_law);
	ret = FUNC3(client, ADP8860_ISCT1,
			(pdata->led_on_time & 0x3) << 6);
	ret |= FUNC3(client, ADP8860_ISCF,
			FUNC0(pdata->led_fade_in, pdata->led_fade_out));

	if (ret) {
		FUNC5(&client->dev, "failed to write\n");
		return ret;
	}

	for (i = 0; i < pdata->num_leds; ++i) {
		cur_led = &pdata->leds[i];
		led_dat = &led[i];

		led_dat->id = cur_led->flags & ADP8860_FLAG_LED_MASK;

		if (led_dat->id > 7 || led_dat->id < 1) {
			FUNC5(&client->dev, "Invalid LED ID %d\n",
				led_dat->id);
			ret = -EINVAL;
			goto err;
		}

		if (pdata->bl_led_assign & (1 << (led_dat->id - 1))) {
			FUNC5(&client->dev, "LED %d used by Backlight\n",
				led_dat->id);
			ret = -EBUSY;
			goto err;
		}

		led_dat->cdev.name = cur_led->name;
		led_dat->cdev.default_trigger = cur_led->default_trigger;
		led_dat->cdev.brightness_set = adp8860_led_set;
		led_dat->cdev.brightness = LED_OFF;
		led_dat->flags = cur_led->flags >> FLAG_OFFT_SHIFT;
		led_dat->client = client;
		led_dat->new_brightness = LED_OFF;
		FUNC1(&led_dat->work, adp8860_led_work);

		ret = FUNC9(&client->dev, &led_dat->cdev);
		if (ret) {
			FUNC5(&client->dev, "failed to register LED %d\n",
				led_dat->id);
			goto err;
		}

		ret = FUNC2(led_dat);
		if (ret) {
			FUNC5(&client->dev, "failed to write\n");
			i++;
			goto err;
		}
	}

	data->led = led;

	return 0;

 err:
	for (i = i - 1; i >= 0; --i) {
		FUNC10(&led[i].cdev);
		FUNC4(&led[i].work);
	}

	return ret;
}