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
struct abx500_chargalg {int /*<<< orphan*/  chargalg_work; int /*<<< orphan*/  chargalg_wq; } ;

/* Variables and functions */
 struct abx500_chargalg* FUNC0 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct power_supply *psy)
{
	struct abx500_chargalg *di = FUNC0(psy);

	/*
	 * Trigger execution of the algorithm instantly and read
	 * all power_supply properties there instead
	 */
	FUNC1(di->chargalg_wq, &di->chargalg_work);
}