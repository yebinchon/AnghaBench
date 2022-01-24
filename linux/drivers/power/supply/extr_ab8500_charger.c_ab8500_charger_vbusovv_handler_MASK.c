#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  psy; } ;
struct TYPE_3__ {int vbus_ovv; } ;
struct ab8500_charger {int /*<<< orphan*/  check_hw_failure_work; int /*<<< orphan*/  charger_wq; TYPE_2__ usb_chg; TYPE_1__ flags; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct ab8500_charger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_di)
{
	struct ab8500_charger *di = _di;

	FUNC1(di->dev, "VBUS overvoltage detected\n");
	di->flags.vbus_ovv = true;
	FUNC0(di, di->usb_chg.psy);

	/* Schedule a new HW failure check */
	FUNC2(di->charger_wq, &di->check_hw_failure_work, 0);

	return IRQ_HANDLED;
}