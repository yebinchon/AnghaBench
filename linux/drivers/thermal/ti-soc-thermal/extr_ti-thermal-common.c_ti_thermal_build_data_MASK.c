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
struct ti_thermal_data {int sensor_id; int /*<<< orphan*/  thermal_wq; int /*<<< orphan*/  pcb_tz; int /*<<< orphan*/  mode; struct ti_bandgap* bgp; } ;
struct ti_bandgap {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERMAL_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ti_thermal_data* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ti_thermal_work ; 

__attribute__((used)) static struct ti_thermal_data
*FUNC4(struct ti_bandgap *bgp, int id)
{
	struct ti_thermal_data *data;

	data = FUNC2(bgp->dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		FUNC1(bgp->dev, "kzalloc fail\n");
		return NULL;
	}
	data->sensor_id = id;
	data->bgp = bgp;
	data->mode = THERMAL_DEVICE_ENABLED;
	/* pcb_tz will be either valid or PTR_ERR() */
	data->pcb_tz = FUNC3("pcb");
	FUNC0(&data->thermal_wq, ti_thermal_work);

	return data;
}