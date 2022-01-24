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
typedef  int /*<<< orphan*/  u64 ;
struct zone_device {int work_scheduled; int /*<<< orphan*/  work; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  pkg_interrupt_cnt ; 
 int /*<<< orphan*/  pkg_temp_lock ; 
 struct zone_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(u64 msr_val)
{
	int cpu = FUNC3();
	struct zone_device *zonedev;
	unsigned long flags;

	FUNC4(&pkg_temp_lock, flags);
	++pkg_interrupt_cnt;

	FUNC0();

	/* Work is per package, so scheduling it once is enough. */
	zonedev = FUNC1(cpu);
	if (zonedev && !zonedev->work_scheduled) {
		zonedev->work_scheduled = true;
		FUNC2(zonedev->cpu, &zonedev->work);
	}

	FUNC5(&pkg_temp_lock, flags);
	return 0;
}