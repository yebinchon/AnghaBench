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
struct int3406_thermal_data {int lower_limit; int upper_limit; TYPE_1__* br; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int count; int /*<<< orphan*/  levels; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,unsigned long long) ; 

__attribute__((used)) static void FUNC3(struct int3406_thermal_data *d)
{
	acpi_status status;
	unsigned long long lower_limit, upper_limit;

	status = FUNC1(d->handle, "DDDL", NULL, &lower_limit);
	if (FUNC0(status))
		d->lower_limit = FUNC2(d->br->levels,
					d->br->count, lower_limit);

	status = FUNC1(d->handle, "DDPC", NULL, &upper_limit);
	if (FUNC0(status))
		d->upper_limit = FUNC2(d->br->levels,
					d->br->count, upper_limit);

	/* lower_limit and upper_limit should be always set */
	d->lower_limit = d->lower_limit > 0 ? d->lower_limit : 2;
	d->upper_limit = d->upper_limit > 0 ? d->upper_limit : d->br->count - 1;
}