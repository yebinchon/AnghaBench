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
struct phy_mdm6600_map {int /*<<< orphan*/  name; int /*<<< orphan*/  direction; } ;
struct phy_mdm6600 {struct gpio_desc* cmd_gpios; struct gpio_desc* status_gpios; struct gpio_desc* mode_gpios; struct gpio_desc** ctrl_gpios; struct device* dev; } ;
struct gpio_desc {scalar_t__ ndescs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct phy_mdm6600_map*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 scalar_t__ PHY_MDM6600_NR_CMD_LINES ; 
 scalar_t__ PHY_MDM6600_NR_MODE_LINES ; 
 scalar_t__ PHY_MDM6600_NR_STATUS_LINES ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct gpio_desc* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct phy_mdm6600_map* phy_mdm6600_ctrl_gpio_map ; 

__attribute__((used)) static int FUNC6(struct phy_mdm6600 *ddata)
{
	struct device *dev = ddata->dev;
	int i;

	/* MDM6600 control lines */
	for (i = 0; i < FUNC0(phy_mdm6600_ctrl_gpio_map); i++) {
		const struct phy_mdm6600_map *map =
			&phy_mdm6600_ctrl_gpio_map[i];
		struct gpio_desc **gpio = &ddata->ctrl_gpios[i];

		*gpio = FUNC4(dev, map->name, map->direction);
		if (FUNC1(*gpio)) {
			FUNC3(dev, "gpio %s error %li\n",
				 map->name, FUNC2(*gpio));
			return FUNC2(*gpio);
		}
	}

	/* MDM6600 USB start-up mode output lines */
	ddata->mode_gpios = FUNC5(dev, "motorola,mode",
						 GPIOD_OUT_LOW);
	if (FUNC1(ddata->mode_gpios))
		return FUNC2(ddata->mode_gpios);

	if (ddata->mode_gpios->ndescs != PHY_MDM6600_NR_MODE_LINES)
		return -EINVAL;

	/* MDM6600 status input lines */
	ddata->status_gpios = FUNC5(dev, "motorola,status",
						   GPIOD_IN);
	if (FUNC1(ddata->status_gpios))
		return FUNC2(ddata->status_gpios);

	if (ddata->status_gpios->ndescs != PHY_MDM6600_NR_STATUS_LINES)
		return -EINVAL;

	/* MDM6600 cmd output lines */
	ddata->cmd_gpios = FUNC5(dev, "motorola,cmd",
						GPIOD_OUT_LOW);
	if (FUNC1(ddata->cmd_gpios))
		return FUNC2(ddata->cmd_gpios);

	if (ddata->cmd_gpios->ndescs != PHY_MDM6600_NR_CMD_LINES)
		return -EINVAL;

	return 0;
}