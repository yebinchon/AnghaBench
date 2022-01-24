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
struct ti_thermal_data {int /*<<< orphan*/  polling_delay; struct ti_thermal_data* ti_thermal; int /*<<< orphan*/  sensor_id; } ;
struct ti_bandgap {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ti_thermal_data*) ; 
 int FUNC1 (struct ti_thermal_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ti_thermal_data* FUNC3 (int /*<<< orphan*/ ,int,struct ti_thermal_data*,int /*<<< orphan*/ *) ; 
 struct ti_thermal_data* FUNC4 (struct ti_bandgap*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_bandgap*,int,struct ti_thermal_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_bandgap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_of_thermal_ops ; 
 struct ti_thermal_data* FUNC7 (struct ti_bandgap*,int) ; 

int FUNC8(struct ti_bandgap *bgp, int id,
			     char *domain)
{
	struct ti_thermal_data *data;

	data = FUNC4(bgp, id);

	if (!data || FUNC0(data))
		data = FUNC7(bgp, id);

	if (!data)
		return -EINVAL;

	/* in case this is specified by DT */
	data->ti_thermal = FUNC3(bgp->dev, id,
					data, &ti_of_thermal_ops);
	if (FUNC0(data->ti_thermal)) {
		FUNC2(bgp->dev, "thermal zone device is NULL\n");
		return FUNC1(data->ti_thermal);
	}

	FUNC5(bgp, id, data);
	FUNC6(bgp, data->sensor_id,
					data->ti_thermal->polling_delay);

	return 0;
}