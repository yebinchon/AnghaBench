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
typedef  int u32 ;
struct zone_device {unsigned int cpu; int tj_max; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  msr_pkg_therm_high; int /*<<< orphan*/  msr_pkg_therm_low; int /*<<< orphan*/  tzone; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_NUMBER_OF_TRIPS ; 
 int /*<<< orphan*/  MSR_IA32_PACKAGE_THERM_INTERRUPT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct zone_device*) ; 
 struct zone_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int max_id ; 
 int /*<<< orphan*/  pkg_temp_lock ; 
 int /*<<< orphan*/  pkg_temp_thermal_threshold_work_fn ; 
 int /*<<< orphan*/  pkg_temp_tz_params ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,struct zone_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  tzone_ops ; 
 struct zone_device** zones ; 

__attribute__((used)) static int FUNC14(unsigned int cpu)
{
	int id = FUNC13(cpu);
	u32 tj_max, eax, ebx, ecx, edx;
	struct zone_device *zonedev;
	int thres_count, err;

	if (id >= max_id)
		return -ENOMEM;

	FUNC4(6, &eax, &ebx, &ecx, &edx);
	thres_count = ebx & 0x07;
	if (!thres_count)
		return -ENODEV;

	thres_count = FUNC3(thres_count, 0, MAX_NUMBER_OF_TRIPS);

	err = FUNC6(cpu, &tj_max);
	if (err)
		return err;

	zonedev = FUNC8(sizeof(*zonedev), GFP_KERNEL);
	if (!zonedev)
		return -ENOMEM;

	FUNC0(&zonedev->work, pkg_temp_thermal_threshold_work_fn);
	zonedev->cpu = cpu;
	zonedev->tj_max = tj_max;
	zonedev->tzone = FUNC12("x86_pkg_temp",
			thres_count,
			(thres_count == MAX_NUMBER_OF_TRIPS) ? 0x03 : 0x01,
			zonedev, &tzone_ops, &pkg_temp_tz_params, 0, 0);
	if (FUNC1(zonedev->tzone)) {
		err = FUNC2(zonedev->tzone);
		FUNC7(zonedev);
		return err;
	}
	/* Store MSR value for package thermal interrupt, to restore at exit */
	FUNC9(MSR_IA32_PACKAGE_THERM_INTERRUPT, zonedev->msr_pkg_therm_low,
	      zonedev->msr_pkg_therm_high);

	FUNC5(cpu, &zonedev->cpumask);
	FUNC10(&pkg_temp_lock);
	zones[id] = zonedev;
	FUNC11(&pkg_temp_lock);
	return 0;
}