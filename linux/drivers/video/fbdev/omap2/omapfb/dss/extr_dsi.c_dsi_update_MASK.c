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
typedef  int u16 ;
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int x_res; int y_res; } ;
struct dsi_data {int update_channel; void (* framedone_callback ) (int,void*) ;int update_bytes; int /*<<< orphan*/  pix_fmt; TYPE_1__ timings; void* framedone_data; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct omap_dss_device *dssdev, int channel,
		void (*callback)(int, void *), void *data)
{
	struct platform_device *dsidev = FUNC0(dssdev);
	struct dsi_data *dsi = FUNC1(dsidev);
	u16 dw, dh;

	FUNC3(dsidev);

	dsi->update_channel = channel;

	dsi->framedone_callback = callback;
	dsi->framedone_data = data;

	dw = dsi->timings.x_res;
	dh = dsi->timings.y_res;

#ifdef DSI_PERF_MEASURE
	dsi->update_bytes = dw * dh *
		dsi_get_pixel_size(dsi->pix_fmt) / 8;
#endif
	FUNC4(dsidev);

	return 0;
}