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
struct ab8500_btemp {int /*<<< orphan*/  btemp_periodic_work; int /*<<< orphan*/  btemp_wq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ab8500_btemp *di,
	bool enable)
{
	FUNC1(di->dev, "Enable periodic temperature measurements: %d\n",
		enable);
	/*
	 * Make sure a new measurement is done directly by cancelling
	 * any pending work
	 */
	FUNC0(&di->btemp_periodic_work);

	if (enable)
		FUNC2(di->btemp_wq, &di->btemp_periodic_work, 0);
}