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
struct thermal_zone_device {struct int34x_thermal_zone* devdata; } ;
struct int34x_thermal_zone {scalar_t__ lpat_table; TYPE_1__* adev; TYPE_2__* override_ops; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {int (* get_temp ) (struct thermal_zone_device*,int*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long long) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int FUNC3 (scalar_t__,int) ; 
 int FUNC4 (struct thermal_zone_device*,int*) ; 

__attribute__((used)) static int FUNC5(struct thermal_zone_device *zone,
					 int *temp)
{
	struct int34x_thermal_zone *d = zone->devdata;
	unsigned long long tmp;
	acpi_status status;

	if (d->override_ops && d->override_ops->get_temp)
		return d->override_ops->get_temp(zone, temp);

	status = FUNC2(d->adev->handle, "_TMP", NULL, &tmp);
	if (FUNC0(status))
		return -EIO;

	if (d->lpat_table) {
		int conv_temp;

		conv_temp = FUNC3(d->lpat_table, (int)tmp);
		if (conv_temp < 0)
			return conv_temp;

		*temp = (unsigned long)conv_temp * 10;
	} else
		/* _TMP returns the temperature in tenths of degrees Kelvin */
		*temp = FUNC1(tmp);

	return 0;
}