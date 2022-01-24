#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct panel_drv_data {scalar_t__ ct_cp_hpd_gpio; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* hdmi; } ;
struct omap_dss_device {struct omap_dss_device* dst; struct omap_dss_device* src; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (struct omap_dss_device*,struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct omap_dss_device *dssdev,
		struct omap_dss_device *dst)
{
	struct panel_drv_data *ddata = FUNC2(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	r = in->ops.hdmi->connect(in, dssdev);
	if (r)
		return r;

	dst->src = dssdev;
	dssdev->dst = dst;

	if (ddata->ct_cp_hpd_gpio) {
		FUNC0(ddata->ct_cp_hpd_gpio, 1);
		/* DC-DC converter needs at max 300us to get to 90% of 5V */
		FUNC3(300);
	}

	return 0;
}