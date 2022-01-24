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
struct w1_gpio_platform_data {scalar_t__ pullup_gpiod; int /*<<< orphan*/  (* enable_external_pullup ) (int) ;scalar_t__ gpiod; } ;
struct w1_bus_master {int /*<<< orphan*/  set_pullup; int /*<<< orphan*/  write_bit; int /*<<< orphan*/  read_bit; struct w1_gpio_platform_data* data; } ;
struct device {struct w1_gpio_platform_data* platform_data; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_OUT_LOW ; 
 int GPIOD_OUT_LOW_OPEN_DRAIN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct w1_gpio_platform_data* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ *,int,int) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct w1_bus_master*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct w1_bus_master*) ; 
 int /*<<< orphan*/  w1_gpio_read_bit ; 
 int /*<<< orphan*/  w1_gpio_set_pullup ; 
 int /*<<< orphan*/  w1_gpio_write_bit ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct w1_bus_master *master;
	struct w1_gpio_platform_data *pdata;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	/* Enforce open drain mode by default */
	enum gpiod_flags gflags = GPIOD_OUT_LOW_OPEN_DRAIN;
	int err;

	if (FUNC10()) {
		pdata = FUNC6(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;

		/*
		 * This parameter means that something else than the gpiolib has
		 * already set the line into open drain mode, so we should just
		 * driver it high/low like we are in full control of the line and
		 * open drain will happen transparently.
		 */
		if (FUNC9(np, "linux,open-drain", NULL))
			gflags = GPIOD_OUT_LOW;

		pdev->dev.platform_data = pdata;
	}
	pdata = FUNC3(dev);

	if (!pdata) {
		FUNC2(dev, "No configuration data\n");
		return -ENXIO;
	}

	master = FUNC6(dev, sizeof(struct w1_bus_master),
			GFP_KERNEL);
	if (!master) {
		FUNC2(dev, "Out of memory\n");
		return -ENOMEM;
	}

	pdata->gpiod = FUNC4(dev, NULL, 0, gflags);
	if (FUNC0(pdata->gpiod)) {
		FUNC2(dev, "gpio_request (pin) failed\n");
		return FUNC1(pdata->gpiod);
	}

	pdata->pullup_gpiod =
		FUNC5(dev, NULL, 1, GPIOD_OUT_LOW);
	if (FUNC0(pdata->pullup_gpiod)) {
		FUNC2(dev, "gpio_request_one "
			"(ext_pullup_enable_pin) failed\n");
		return FUNC1(pdata->pullup_gpiod);
	}

	master->data = pdata;
	master->read_bit = w1_gpio_read_bit;
	FUNC7(pdata->gpiod, 1);
	master->write_bit = w1_gpio_write_bit;

	/*
	 * If we are using open drain emulation from the GPIO library,
	 * we need to use this pullup function that hammers the line
	 * high using a raw accessor to provide pull-up for the w1
	 * line.
	 */
	if (gflags == GPIOD_OUT_LOW_OPEN_DRAIN)
		master->set_pullup = w1_gpio_set_pullup;

	err = FUNC13(master);
	if (err) {
		FUNC2(dev, "w1_add_master device failed\n");
		return err;
	}

	if (pdata->enable_external_pullup)
		pdata->enable_external_pullup(1);

	if (pdata->pullup_gpiod)
		FUNC8(pdata->pullup_gpiod, 1);

	FUNC11(pdev, master);

	return 0;
}