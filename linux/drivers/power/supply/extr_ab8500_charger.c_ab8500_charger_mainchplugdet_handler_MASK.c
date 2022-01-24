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
struct ab8500_charger {int /*<<< orphan*/  ac_charger_attached_work; int /*<<< orphan*/  charger_wq; int /*<<< orphan*/  parent; int /*<<< orphan*/  charger_attached_mutex; int /*<<< orphan*/  ac_work; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *_di)
{
	struct ab8500_charger *di = _di;

	FUNC0(di->dev, "Main charger plugged\n");
	FUNC5(di->charger_wq, &di->ac_work);

	FUNC2(&di->charger_attached_mutex);
	FUNC3(&di->charger_attached_mutex);

	if (FUNC1(di->parent))
		FUNC4(di->charger_wq,
			   &di->ac_charger_attached_work,
			   HZ);
	return IRQ_HANDLED;
}