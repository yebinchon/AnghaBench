#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int vbus_drop_end; } ;
struct ab8500_charger {int /*<<< orphan*/  vbus_drop_end_work; int /*<<< orphan*/  charger_wq; TYPE_1__ flags; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int VBUS_IN_CURR_LIM_RETRY_SET_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_di)
{
	struct ab8500_charger *di = _di;

	FUNC0(di->dev, "VBUS charger drop ended\n");
	di->flags.vbus_drop_end = true;

	/*
	 * VBUS might have dropped due to bad connection.
	 * Schedule a new input limit set to the value SW requests.
	 */
	FUNC1(di->charger_wq, &di->vbus_drop_end_work,
			   FUNC2(VBUS_IN_CURR_LIM_RETRY_SET_TIME * HZ));

	return IRQ_HANDLED;
}