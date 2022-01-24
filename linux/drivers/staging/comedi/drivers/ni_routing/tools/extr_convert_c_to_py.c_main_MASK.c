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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__* ni_all_route_values ; 
 scalar_t__* ni_device_routes_list ; 

int FUNC5(void)
{
	FILE *fp = FUNC3("ni_values.py", "w");

	/* write route register values */
	FUNC4(fp, "ni_route_values = {\n");
	for (int i = 0; ni_all_route_values[i]; ++i)
		FUNC1(ni_all_route_values[i], fp);
	FUNC4(fp, "}\n\n");

	/* write valid device routes */
	FUNC4(fp, "ni_device_routes = {\n");
	for (int i = 0; ni_device_routes_list[i]; ++i)
		FUNC0(ni_device_routes_list[i], fp);
	FUNC4(fp, "}\n");

	/* finish; close file */
	FUNC2(fp);
	return 0;
}