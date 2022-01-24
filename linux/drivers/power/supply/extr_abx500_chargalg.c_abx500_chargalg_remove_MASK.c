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
struct platform_device {int dummy; } ;
struct abx500_chargalg {int /*<<< orphan*/  chargalg_psy; int /*<<< orphan*/  chargalg_wq; int /*<<< orphan*/  chargalg_work; int /*<<< orphan*/  chargalg_wd_work; int /*<<< orphan*/  chargalg_periodic_work; int /*<<< orphan*/  maintenance_timer; int /*<<< orphan*/  safety_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct abx500_chargalg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct abx500_chargalg* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct abx500_chargalg *di = FUNC5(pdev);

	/* sysfs interface to enable/disbale charging from user space */
	FUNC0(di);

	FUNC4(&di->safety_timer);
	FUNC4(&di->maintenance_timer);

	FUNC1(&di->chargalg_periodic_work);
	FUNC1(&di->chargalg_wd_work);
	FUNC2(&di->chargalg_work);

	/* Delete the work queue */
	FUNC3(di->chargalg_wq);

	FUNC6(di->chargalg_psy);

	return 0;
}