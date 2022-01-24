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
struct thermal_trip {scalar_t__ type; int /*<<< orphan*/  temperature; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hisi_thermal_sensor {int /*<<< orphan*/  thres_temp; int /*<<< orphan*/ * tzd; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ THERMAL_TRIP_PASSIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hisi_thermal_sensor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hisi_of_thermal_ops ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct thermal_trip* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
					struct hisi_thermal_sensor *sensor)
{
	int ret, i;
	const struct thermal_trip *trip;

	sensor->tzd = FUNC3(&pdev->dev,
							   sensor->id, sensor,
							   &hisi_of_thermal_ops);
	if (FUNC0(sensor->tzd)) {
		ret = FUNC1(sensor->tzd);
		sensor->tzd = NULL;
		FUNC2(&pdev->dev, "failed to register sensor id %d: %d\n",
			sensor->id, ret);
		return ret;
	}

	trip = FUNC5(sensor->tzd);

	for (i = 0; i < FUNC4(sensor->tzd); i++) {
		if (trip[i].type == THERMAL_TRIP_PASSIVE) {
			sensor->thres_temp = trip[i].temperature;
			break;
		}
	}

	return 0;
}