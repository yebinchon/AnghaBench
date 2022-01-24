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
struct power_supply {int dummy; } ;
struct gab {int /*<<< orphan*/  bat_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gab* FUNC2 (struct power_supply*) ; 

__attribute__((used)) static void FUNC3(struct power_supply *psy)
{
	struct gab *adc_bat = FUNC2(psy);

	FUNC1(&adc_bat->bat_work, FUNC0(0));
}