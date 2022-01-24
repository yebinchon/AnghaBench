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

/* Variables and functions */
 int EPERM ; 
 int ERESTARTSYS ; 
 int TPACPI_FAN_LAST_LEVEL ; 
 int /*<<< orphan*/  fan_control_allowed ; 
 int fan_control_desired_level ; 
 int /*<<< orphan*/  fan_mutex ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int level)
{
	int rc;

	if (!fan_control_allowed)
		return -EPERM;

	if (FUNC2(&fan_mutex))
		return -ERESTARTSYS;

	if (level == TPACPI_FAN_LAST_LEVEL)
		level = fan_control_desired_level;

	rc = FUNC0(level);
	if (!rc)
		FUNC1(level);

	FUNC3(&fan_mutex);
	return rc;
}