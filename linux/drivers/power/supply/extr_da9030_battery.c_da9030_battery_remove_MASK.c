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
struct da9030_charger {int /*<<< orphan*/  psy; int /*<<< orphan*/  work; int /*<<< orphan*/  nb; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int DA9030_EVENT_CHDET ; 
 int DA9030_EVENT_CHIOVER ; 
 int DA9030_EVENT_TBAT ; 
 int DA9030_EVENT_VBATMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct da9030_charger*) ; 
 int /*<<< orphan*/  FUNC2 (struct da9030_charger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct da9030_charger* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct da9030_charger *charger = FUNC4(dev);

	FUNC1(charger);

	FUNC3(charger->master, &charger->nb,
				   DA9030_EVENT_CHDET | DA9030_EVENT_VBATMON |
				   DA9030_EVENT_CHIOVER | DA9030_EVENT_TBAT);
	FUNC0(&charger->work);
	FUNC2(charger, 0);
	FUNC5(charger->psy);

	return 0;
}