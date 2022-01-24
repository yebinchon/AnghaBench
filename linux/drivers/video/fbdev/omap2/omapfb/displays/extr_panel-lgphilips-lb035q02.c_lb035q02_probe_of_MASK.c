#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct panel_drv_data {struct omap_dss_device* in; int /*<<< orphan*/  backlight_gpio; struct omap_dss_device* enable_gpio; } ;
struct omap_dss_device {int dummy; } ;
typedef  struct omap_dss_device gpio_desc ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct panel_drv_data* FUNC3 (TYPE_1__*) ; 
 struct omap_dss_device* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct omap_dss_device* FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct device_node *node = spi->dev.of_node;
	struct panel_drv_data *ddata = FUNC3(&spi->dev);
	struct omap_dss_device *in;
	struct gpio_desc *gpio;

	gpio = FUNC4(&spi->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(gpio)) {
		FUNC2(&spi->dev, "failed to parse enable gpio\n");
		return FUNC1(gpio);
	}

	ddata->enable_gpio = gpio;

	ddata->backlight_gpio = -ENOENT;

	in = FUNC5(node);
	if (FUNC0(in)) {
		FUNC2(&spi->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	return 0;
}