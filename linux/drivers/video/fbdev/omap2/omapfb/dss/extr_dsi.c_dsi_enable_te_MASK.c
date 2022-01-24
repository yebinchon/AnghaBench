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
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int te_enabled; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct omap_dss_device *dssdev, bool enable)
{
	struct platform_device *dsidev = FUNC0(dssdev);
	struct dsi_data *dsi = FUNC1(dsidev);

	dsi->te_enabled = enable;
	return 0;
}