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
struct TYPE_3__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct panel_drv_data {int /*<<< orphan*/  in; int /*<<< orphan*/  reset_gpio; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct panel_drv_data* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct panel_drv_data *ddata = FUNC3(&spi->dev);
	struct device_node *np = spi->dev.of_node;

	ddata->reset_gpio = FUNC4(np, "reset-gpios", 0);

	ddata->in = FUNC5(np);
	if (FUNC0(ddata->in)) {
		FUNC2(&spi->dev, "failed to find video source\n");
		return FUNC1(ddata->in);
	}

	return 0;
}