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
struct gpio_chip {int can_sleep; int base; int /*<<< orphan*/  owner; struct device* parent; int /*<<< orphan*/  label; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get; } ;
struct sbsm_data {int last_state; int last_state_cont; struct i2c_client* client; struct gpio_chip chip; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBSM_CMD_BATSYSSTATE ; 
 int /*<<< orphan*/  SBSM_CMD_BATSYSSTATECONT ; 
 int /*<<< orphan*/  SBSM_MAX_BATS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,struct gpio_chip*,struct sbsm_data*) ; 
 int /*<<< orphan*/  sbsm_gpio_direction_input ; 
 int /*<<< orphan*/  sbsm_gpio_get_value ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sbsm_data *data)
{
	struct gpio_chip *gc = &data->chip;
	struct i2c_client *client = data->client;
	struct device *dev = &client->dev;
	int ret;

	if (!FUNC1(dev, "gpio-controller"))
		return 0;

	ret  = FUNC3(client, SBSM_CMD_BATSYSSTATE);
	if (ret < 0)
		return ret;
	data->last_state = ret;

	ret  = FUNC3(client, SBSM_CMD_BATSYSSTATECONT);
	if (ret < 0)
		return ret;
	data->last_state_cont = ret;

	gc->get = sbsm_gpio_get_value;
	gc->direction_input  = sbsm_gpio_direction_input;
	gc->can_sleep = true;
	gc->base = -1;
	gc->ngpio = SBSM_MAX_BATS;
	gc->label = client->name;
	gc->parent = dev;
	gc->owner = THIS_MODULE;

	ret = FUNC2(dev, gc, data);
	if (ret) {
		FUNC0(dev, "devm_gpiochip_add_data failed: %d\n", ret);
		return ret;
	}

	return ret;
}