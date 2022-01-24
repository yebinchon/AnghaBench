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
struct panel_drv_data {struct omap_dss_device* in; } ;
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct panel_drv_data* FUNC3 (TYPE_1__*) ; 
 struct omap_dss_device* FUNC4 (struct device_node*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct device_node *node = spi->dev.of_node;
	struct panel_drv_data *ddata = FUNC3(&spi->dev);
	struct omap_dss_device *in;

	in = FUNC4(node);
	if (FUNC0(in)) {
		FUNC2(&spi->dev, "failed to find video source\n");
		return FUNC1(in);
	}

	ddata->in = in;

	return 0;
}