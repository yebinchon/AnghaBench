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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct omap_dss_device {int dummy; } ;
struct panel_drv_data {struct omap_dss_device* in; struct omap_dss_device dssdev; } ;

/* Variables and functions */
 struct panel_drv_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct panel_drv_data *ddata = FUNC0(&spi->dev);
	struct omap_dss_device *dssdev = &ddata->dssdev;
	struct omap_dss_device *in = ddata->in;

	FUNC4(dssdev);

	FUNC1(dssdev);
	FUNC2(dssdev);

	FUNC3(in);

	return 0;
}