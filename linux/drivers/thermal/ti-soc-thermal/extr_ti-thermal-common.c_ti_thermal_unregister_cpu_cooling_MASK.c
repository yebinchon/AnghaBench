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
struct ti_thermal_data {scalar_t__ policy; int /*<<< orphan*/  cool_dev; } ;
struct ti_bandgap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ti_thermal_data* FUNC2 (struct ti_bandgap*,int) ; 

int FUNC3(struct ti_bandgap *bgp, int id)
{
	struct ti_thermal_data *data;

	data = FUNC2(bgp, id);

	if (data) {
		FUNC0(data->cool_dev);
		if (data->policy)
			FUNC1(data->policy);
	}

	return 0;
}