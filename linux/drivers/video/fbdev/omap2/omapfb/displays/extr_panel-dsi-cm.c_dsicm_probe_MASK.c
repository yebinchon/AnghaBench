#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int x_res; int y_res; int pixelclock; } ;
struct TYPE_5__ {int /*<<< orphan*/  dsi_pix_fmt; TYPE_1__ timings; } ;
struct omap_dss_device {int caps; TYPE_2__ panel; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/ * driver; struct device* dev; } ;
struct panel_drv_data {struct backlight_device* bldev; scalar_t__ use_dsi_backlight; int /*<<< orphan*/  ulps_work; int /*<<< orphan*/  te_timeout_work; int /*<<< orphan*/  ext_te_gpio; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  do_update; int /*<<< orphan*/  lock; TYPE_1__ timings; struct omap_dss_device dssdev; struct platform_device* pdev; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int brightness; void* power; void* fb_blank; } ;
struct backlight_device {TYPE_3__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENODEV ; 
 int ENOMEM ; 
 void* FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_DSI ; 
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ; 
 int OMAP_DSS_DISPLAY_CAP_TEAR_ELIM ; 
 int /*<<< orphan*/  OMAP_DSS_DSI_FMT_RGB888 ; 
 int FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC5 (int /*<<< orphan*/ ,struct device*,struct panel_drv_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct panel_drv_data* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  dsicm_attr_group ; 
 int /*<<< orphan*/  dsicm_bl_ops ; 
 int /*<<< orphan*/  FUNC13 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  dsicm_ops ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  dsicm_te_isr ; 
 int /*<<< orphan*/  dsicm_te_timeout_work_callback ; 
 int /*<<< orphan*/  dsicm_ulps_work ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct panel_drv_data*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct panel_drv_data *ddata;
	struct backlight_device *bldev = NULL;
	struct device *dev = &pdev->dev;
	struct omap_dss_device *dssdev;
	int r;

	FUNC7(dev, "probe\n");

	if (!pdev->dev.of_node)
		return -ENODEV;

	ddata = FUNC11(dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC21(pdev, ddata);
	ddata->pdev = pdev;

	r = FUNC15(pdev);
	if (r)
		return r;

	ddata->timings.x_res = 864;
	ddata->timings.y_res = 480;
	ddata->timings.pixelclock = 864 * 480 * 60;

	dssdev = &ddata->dssdev;
	dssdev->dev = dev;
	dssdev->driver = &dsicm_ops;
	dssdev->panel.timings = ddata->timings;
	dssdev->type = OMAP_DISPLAY_TYPE_DSI;
	dssdev->owner = THIS_MODULE;

	dssdev->panel.dsi_pix_fmt = OMAP_DSS_DSI_FMT_RGB888;
	dssdev->caps = OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE |
		OMAP_DSS_DISPLAY_CAP_TEAR_ELIM;

	r = FUNC20(dssdev);
	if (r) {
		FUNC8(dev, "Failed to register panel\n");
		goto err_reg;
	}

	FUNC19(&ddata->lock);

	FUNC4(&ddata->do_update, 0);

	if (FUNC16(ddata->reset_gpio)) {
		r = FUNC10(dev, ddata->reset_gpio,
				GPIOF_OUT_INIT_LOW, "taal rst");
		if (r) {
			FUNC8(dev, "failed to request reset gpio\n");
			return r;
		}
	}

	if (FUNC16(ddata->ext_te_gpio)) {
		r = FUNC10(dev, ddata->ext_te_gpio,
				GPIOF_IN, "taal irq");
		if (r) {
			FUNC8(dev, "GPIO request failed\n");
			return r;
		}

		r = FUNC12(dev, FUNC17(ddata->ext_te_gpio),
				dsicm_te_isr,
				IRQF_TRIGGER_RISING,
				"taal vsync", ddata);

		if (r) {
			FUNC8(dev, "IRQ request failed\n");
			return r;
		}

		FUNC0(&ddata->te_timeout_work,
					dsicm_te_timeout_work_callback);

		FUNC7(dev, "Using GPIO TE\n");
	}

	FUNC1(&ddata->ulps_work, dsicm_ulps_work);

	FUNC14(ddata);

	if (ddata->use_dsi_backlight) {
		FUNC18(&props, 0, sizeof(struct backlight_properties));
		props.max_brightness = 255;

		props.type = BACKLIGHT_RAW;
		bldev = FUNC5(FUNC9(dev),
				dev, ddata, &dsicm_bl_ops, &props);
		if (FUNC2(bldev)) {
			r = FUNC3(bldev);
			goto err_reg;
		}

		ddata->bldev = bldev;

		bldev->props.fb_blank = FB_BLANK_UNBLANK;
		bldev->props.power = FB_BLANK_UNBLANK;
		bldev->props.brightness = 255;

		FUNC13(bldev);
	}

	r = FUNC22(&dev->kobj, &dsicm_attr_group);
	if (r) {
		FUNC8(dev, "failed to create sysfs files\n");
		goto err_sysfs_create;
	}

	return 0;

err_sysfs_create:
	if (bldev != NULL)
		FUNC6(bldev);
err_reg:
	return r;
}