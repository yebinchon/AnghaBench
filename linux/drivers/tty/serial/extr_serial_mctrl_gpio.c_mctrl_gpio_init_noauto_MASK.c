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
struct mctrl_gpios {int /*<<< orphan*/ * gpio; } ;
struct device {int dummy; } ;
typedef  enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mctrl_gpios* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mctrl_gpios* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int UART_GPIO_MAX ; 
 int FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct mctrl_gpios* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__* mctrl_gpios_desc ; 

struct mctrl_gpios *FUNC8(struct device *dev, unsigned int idx)
{
	struct mctrl_gpios *gpios;
	enum mctrl_gpio_idx i;

	gpios = FUNC5(dev, sizeof(*gpios), GFP_KERNEL);
	if (!gpios)
		return FUNC1(-ENOMEM);

	for (i = 0; i < UART_GPIO_MAX; i++) {
		char *gpio_str;
		bool present;

		/* Check if GPIO property exists and continue if not */
		gpio_str = FUNC6(GFP_KERNEL, "%s-gpios",
				     mctrl_gpios_desc[i].name);
		if (!gpio_str)
			continue;

		present = FUNC3(dev, gpio_str);
		FUNC7(gpio_str);
		if (!present)
			continue;

		gpios->gpio[i] =
			FUNC4(dev,
						      mctrl_gpios_desc[i].name,
						      idx,
						      mctrl_gpios_desc[i].flags);

		if (FUNC2(gpios->gpio[i]))
			return FUNC0(gpios->gpio[i]);
	}

	return gpios;
}