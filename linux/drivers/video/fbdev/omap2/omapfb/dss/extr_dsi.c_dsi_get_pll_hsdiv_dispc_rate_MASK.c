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
struct platform_device {int dummy; } ;
struct TYPE_3__ {unsigned long* clkout; } ;
struct TYPE_4__ {TYPE_1__ cinfo; } ;
struct dsi_data {TYPE_2__ pll; } ;

/* Variables and functions */
 size_t HSDIV_DISPC ; 
 struct dsi_data* FUNC0 (struct platform_device*) ; 

__attribute__((used)) static unsigned long FUNC1(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC0(dsidev);

	return dsi->pll.cinfo.clkout[HSDIV_DISPC];
}