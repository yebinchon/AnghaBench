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
typedef  int u64 ;
struct zone_device {int work_scheduled; struct thermal_zone_device* tzone; } ;
struct work_struct {int dummy; } ;
struct thermal_zone_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_PACKAGE_THERM_STATUS ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int THERM_LOG_THRESHOLD0 ; 
 int THERM_LOG_THRESHOLD1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkg_temp_lock ; 
 struct zone_device* FUNC3 (int) ; 
 int /*<<< orphan*/  pkg_work_cnt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct thermal_zone_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thermal_zone_mutex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct work_struct *work)
{
	struct thermal_zone_device *tzone = NULL;
	int cpu = FUNC5();
	struct zone_device *zonedev;
	u64 msr_val, wr_val;

	FUNC1(&thermal_zone_mutex);
	FUNC6(&pkg_temp_lock);
	++pkg_work_cnt;

	zonedev = FUNC3(cpu);
	if (!zonedev) {
		FUNC7(&pkg_temp_lock);
		FUNC2(&thermal_zone_mutex);
		return;
	}
	zonedev->work_scheduled = false;

	FUNC4(MSR_IA32_PACKAGE_THERM_STATUS, msr_val);
	wr_val = msr_val & ~(THERM_LOG_THRESHOLD0 | THERM_LOG_THRESHOLD1);
	if (wr_val != msr_val) {
		FUNC9(MSR_IA32_PACKAGE_THERM_STATUS, wr_val);
		tzone = zonedev->tzone;
	}

	FUNC0();
	FUNC7(&pkg_temp_lock);

	/*
	 * If tzone is not NULL, then thermal_zone_mutex will prevent the
	 * concurrent removal in the cpu offline callback.
	 */
	if (tzone)
		FUNC8(tzone, THERMAL_EVENT_UNSPECIFIED);

	FUNC2(&thermal_zone_mutex);
}