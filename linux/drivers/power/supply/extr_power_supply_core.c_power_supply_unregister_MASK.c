#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct power_supply {int removing; TYPE_1__ dev; int /*<<< orphan*/  deferred_register_work; int /*<<< orphan*/  changed_work; int /*<<< orphan*/  use_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC7 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC8 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC9 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

void FUNC11(struct power_supply *psy)
{
	FUNC0(FUNC1(&psy->use_cnt));
	psy->removing = true;
	FUNC3(&psy->changed_work);
	FUNC2(&psy->deferred_register_work);
	FUNC10(&psy->dev.kobj, "powers");
	FUNC6(psy);
	FUNC7(psy);
	FUNC8(psy);
	FUNC9(psy);
	FUNC4(&psy->dev, false);
	FUNC5(&psy->dev);
}