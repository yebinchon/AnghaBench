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
struct ti_thermal_data {size_t sensor_id; struct thermal_zone_device* pcb_tz; int /*<<< orphan*/  ti_thermal; struct ti_bandgap* bgp; } ;
struct ti_temp_sensor {int slope_pcb; int constant_pcb; } ;
struct ti_bandgap {int /*<<< orphan*/  dev; TYPE_1__* conf; } ;
struct thermal_zone_device {int dummy; } ;
struct TYPE_2__ {struct ti_temp_sensor* sensors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thermal_zone_device*,int*) ; 
 int FUNC5 (struct ti_bandgap*,size_t,int*) ; 
 int FUNC6 (int,int,int) ; 

__attribute__((used)) static inline int FUNC7(void *devdata, int *temp)
{
	struct thermal_zone_device *pcb_tz = NULL;
	struct ti_thermal_data *data = devdata;
	struct ti_bandgap *bgp;
	const struct ti_temp_sensor *s;
	int ret, tmp, slope, constant;
	int pcb_temp;

	if (!data)
		return 0;

	bgp = data->bgp;
	s = &bgp->conf->sensors[data->sensor_id];

	ret = FUNC5(bgp, data->sensor_id, &tmp);
	if (ret)
		return ret;

	/* Default constants */
	slope = FUNC3(data->ti_thermal);
	constant = FUNC2(data->ti_thermal);

	pcb_tz = data->pcb_tz;
	/* In case pcb zone is available, use the extrapolation rule with it */
	if (!FUNC0(pcb_tz)) {
		ret = FUNC4(pcb_tz, &pcb_temp);
		if (!ret) {
			tmp -= pcb_temp; /* got a valid PCB temp */
			slope = s->slope_pcb;
			constant = s->constant_pcb;
		} else {
			FUNC1(bgp->dev,
				"Failed to read PCB state. Using defaults\n");
			ret = 0;
		}
	}
	*temp = FUNC6(tmp, slope, constant);

	return ret;
}