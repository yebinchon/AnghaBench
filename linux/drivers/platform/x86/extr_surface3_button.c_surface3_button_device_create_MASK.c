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
struct surface3_button_info {int autorepeat; int /*<<< orphan*/  wakeup; scalar_t__ name; int /*<<< orphan*/  active_low; int /*<<< orphan*/  event_code; int /*<<< orphan*/  event_type; int /*<<< orphan*/  acpi_index; } ;
struct platform_device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct gpio_keys_platform_data {int nbuttons; int rep; struct gpio_keys_button* buttons; } ;
struct gpio_keys_button {int gpio; int /*<<< orphan*/  wakeup; scalar_t__ desc; int /*<<< orphan*/  active_low; int /*<<< orphan*/  code; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct platform_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_NBUTTONS ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gpio_keys_platform_data*) ; 
 struct gpio_keys_platform_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,struct gpio_keys_platform_data*,int) ; 
 struct platform_device* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct platform_device *
FUNC9(struct i2c_client *client,
			      const struct surface3_button_info *button_info,
			      bool autorepeat)
{
	const struct surface3_button_info *info;
	struct platform_device *pd;
	struct gpio_keys_button *gpio_keys;
	struct gpio_keys_platform_data *gpio_keys_pdata;
	int n_buttons = 0;
	int gpio;
	int error;

	gpio_keys_pdata = FUNC2(&client->dev,
				       sizeof(*gpio_keys_pdata) +
				       sizeof(*gpio_keys) * MAX_NBUTTONS,
				       GFP_KERNEL);
	if (!gpio_keys_pdata)
		return FUNC0(-ENOMEM);

	gpio_keys = (void *)(gpio_keys_pdata + 1);

	for (info = button_info; info->name; info++) {
		if (info->autorepeat != autorepeat)
			continue;

		gpio = FUNC8(&client->dev,
						   info->acpi_index);
		if (!FUNC3(gpio))
			continue;

		gpio_keys[n_buttons].type = info->event_type;
		gpio_keys[n_buttons].code = info->event_code;
		gpio_keys[n_buttons].gpio = gpio;
		gpio_keys[n_buttons].active_low = info->active_low;
		gpio_keys[n_buttons].desc = info->name;
		gpio_keys[n_buttons].wakeup = info->wakeup;
		n_buttons++;
	}

	if (n_buttons == 0) {
		error = -ENODEV;
		goto err_free_mem;
	}

	gpio_keys_pdata->buttons = gpio_keys;
	gpio_keys_pdata->nbuttons = n_buttons;
	gpio_keys_pdata->rep = autorepeat;

	pd = FUNC6("gpio-keys", PLATFORM_DEVID_AUTO);
	if (!pd) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	error = FUNC5(pd, gpio_keys_pdata,
					 sizeof(*gpio_keys_pdata));
	if (error)
		goto err_free_pdev;

	error = FUNC4(pd);
	if (error)
		goto err_free_pdev;

	return pd;

err_free_pdev:
	FUNC7(pd);
err_free_mem:
	FUNC1(&client->dev, gpio_keys_pdata);
	return FUNC0(error);
}