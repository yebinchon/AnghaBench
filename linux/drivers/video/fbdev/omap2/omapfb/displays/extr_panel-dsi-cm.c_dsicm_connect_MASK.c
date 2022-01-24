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
struct panel_drv_data {int /*<<< orphan*/  channel; struct omap_dss_device* in; TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__* dsi; } ;
struct omap_dss_device {TYPE_3__ ops; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;int (* request_vc ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;int (* set_vc_id ) (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disconnect ) (struct omap_dss_device*,struct omap_dss_device*) ;int /*<<< orphan*/  (* release_vc ) (struct omap_dss_device*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct omap_dss_device*) ; 
 int FUNC2 (struct omap_dss_device*,struct omap_dss_device*) ; 
 int FUNC3 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*,struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC7 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC8(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC7(dssdev);
	struct omap_dss_device *in = ddata->in;
	struct device *dev = &ddata->pdev->dev;
	int r;

	if (FUNC1(dssdev))
		return 0;

	r = in->ops.dsi->connect(in, dssdev);
	if (r) {
		FUNC0(dev, "Failed to connect to video source\n");
		return r;
	}

	r = in->ops.dsi->request_vc(ddata->in, &ddata->channel);
	if (r) {
		FUNC0(dev, "failed to get virtual channel\n");
		goto err_req_vc;
	}

	r = in->ops.dsi->set_vc_id(ddata->in, ddata->channel, TCH);
	if (r) {
		FUNC0(dev, "failed to set VC_ID\n");
		goto err_vc_id;
	}

	return 0;

err_vc_id:
	in->ops.dsi->release_vc(ddata->in, ddata->channel);
err_req_vc:
	in->ops.dsi->disconnect(in, dssdev);
	return r;
}