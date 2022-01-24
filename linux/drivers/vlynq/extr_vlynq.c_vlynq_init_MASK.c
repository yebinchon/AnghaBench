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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlynq_bus_type ; 
 int /*<<< orphan*/  vlynq_platform_driver ; 

__attribute__((used)) static int FUNC3(void)
{
	int res = 0;

	res = FUNC0(&vlynq_bus_type);
	if (res)
		goto fail_bus;

	res = FUNC2(&vlynq_platform_driver);
	if (res)
		goto fail_platform;

	return 0;

fail_platform:
	FUNC1(&vlynq_bus_type);
fail_bus:
	return res;
}