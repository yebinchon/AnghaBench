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
struct omap_dss_device {int /*<<< orphan*/  name; } ;
struct panel_drv_data {struct omap_dss_device dssdev; int /*<<< orphan*/  datapairs; struct omap_dss_device* in; int /*<<< orphan*/  reset_gpio; } ;
struct panel_acx565akm_platform_data {int /*<<< orphan*/  name; int /*<<< orphan*/  datapairs; int /*<<< orphan*/  source; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct panel_acx565akm_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct omap_dss_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	const struct panel_acx565akm_platform_data *pdata;
	struct panel_drv_data *ddata = FUNC1(&spi->dev);
	struct omap_dss_device *dssdev, *in;

	pdata = FUNC2(&spi->dev);

	ddata->reset_gpio = pdata->reset_gpio;

	in = FUNC3(pdata->source);
	if (in == NULL) {
		FUNC0(&spi->dev, "failed to find video source '%s'\n",
				pdata->source);
		return -EPROBE_DEFER;
	}
	ddata->in = in;

	ddata->datapairs = pdata->datapairs;

	dssdev = &ddata->dssdev;
	dssdev->name = pdata->name;

	return 0;
}