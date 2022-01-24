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
struct int34x_thermal_zone {struct int34x_thermal_zone* aux_trips; int /*<<< orphan*/  lpat_table; int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct int34x_thermal_zone*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct int34x_thermal_zone
				 *int34x_thermal_zone)
{
	FUNC2(int34x_thermal_zone->zone);
	FUNC0(int34x_thermal_zone->lpat_table);
	FUNC1(int34x_thermal_zone->aux_trips);
	FUNC1(int34x_thermal_zone);
}