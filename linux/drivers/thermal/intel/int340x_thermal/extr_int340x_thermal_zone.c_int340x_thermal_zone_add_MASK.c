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
struct thermal_zone_device_ops {int dummy; } ;
struct int34x_thermal_zone {unsigned long long aux_trip_nr; struct int34x_thermal_zone* aux_trips; int /*<<< orphan*/  lpat_table; int /*<<< orphan*/  zone; struct thermal_zone_device_ops* override_ops; struct acpi_device* adev; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long long) ; 
 int ENOMEM ; 
 struct int34x_thermal_zone* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int340x_thermal_params ; 
 unsigned long long FUNC9 (struct int34x_thermal_zone*) ; 
 int /*<<< orphan*/  int340x_thermal_zone_ops ; 
 struct int34x_thermal_zone* FUNC10 (unsigned long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct int34x_thermal_zone*) ; 
 struct int34x_thermal_zone* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long long,int,struct int34x_thermal_zone*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct int34x_thermal_zone *FUNC14(struct acpi_device *adev,
				struct thermal_zone_device_ops *override_ops)
{
	struct int34x_thermal_zone *int34x_thermal_zone;
	acpi_status status;
	unsigned long long trip_cnt;
	int trip_mask = 0;
	int ret;

	int34x_thermal_zone = FUNC12(sizeof(*int34x_thermal_zone),
				      GFP_KERNEL);
	if (!int34x_thermal_zone)
		return FUNC2(-ENOMEM);

	int34x_thermal_zone->adev = adev;
	int34x_thermal_zone->override_ops = override_ops;

	status = FUNC6(adev->handle, "PATC", NULL, &trip_cnt);
	if (FUNC0(status))
		trip_cnt = 0;
	else {
		int34x_thermal_zone->aux_trips =
			FUNC10(trip_cnt,
				sizeof(*int34x_thermal_zone->aux_trips),
				GFP_KERNEL);
		if (!int34x_thermal_zone->aux_trips) {
			ret = -ENOMEM;
			goto err_trip_alloc;
		}
		trip_mask = FUNC1(trip_cnt) - 1;
		int34x_thermal_zone->aux_trip_nr = trip_cnt;
	}

	trip_cnt = FUNC9(int34x_thermal_zone);

	int34x_thermal_zone->lpat_table = FUNC8(
								adev->handle);

	int34x_thermal_zone->zone = FUNC13(
						FUNC5(adev),
						trip_cnt,
						trip_mask, int34x_thermal_zone,
						&int340x_thermal_zone_ops,
						&int340x_thermal_params,
						0, 0);
	if (FUNC3(int34x_thermal_zone->zone)) {
		ret = FUNC4(int34x_thermal_zone->zone);
		goto err_thermal_zone;
	}

	return int34x_thermal_zone;

err_thermal_zone:
	FUNC7(int34x_thermal_zone->lpat_table);
	FUNC11(int34x_thermal_zone->aux_trips);
err_trip_alloc:
	FUNC11(int34x_thermal_zone);
	return FUNC2(ret);
}