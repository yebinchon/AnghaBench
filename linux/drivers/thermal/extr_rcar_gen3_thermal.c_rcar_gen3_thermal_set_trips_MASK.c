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
struct rcar_gen3_thermal_tsc {int low; int high; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_GEN3_IRQTEMP1 ; 
 int /*<<< orphan*/  REG_GEN3_IRQTEMP2 ; 
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_gen3_thermal_tsc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_gen3_thermal_tsc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *devdata, int low, int high)
{
	struct rcar_gen3_thermal_tsc *tsc = devdata;

	low = FUNC0(low, -40000, 120000);
	high = FUNC0(high, -40000, 120000);

	FUNC2(tsc, REG_GEN3_IRQTEMP1,
				FUNC1(tsc, low));

	FUNC2(tsc, REG_GEN3_IRQTEMP2,
				FUNC1(tsc, high));

	tsc->low = low;
	tsc->high = high;

	return 0;
}