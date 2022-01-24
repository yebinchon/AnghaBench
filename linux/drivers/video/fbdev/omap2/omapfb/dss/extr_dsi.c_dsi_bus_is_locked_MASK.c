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
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct dsi_data {TYPE_1__ bus_lock; } ;

/* Variables and functions */
 struct dsi_data* FUNC0 (struct platform_device*) ; 

__attribute__((used)) static bool FUNC1(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC0(dsidev);

	return dsi->bus_lock.count == 0;
}