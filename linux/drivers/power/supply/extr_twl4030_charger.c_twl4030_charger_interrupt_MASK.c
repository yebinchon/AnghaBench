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
struct twl4030_bci {int ac_cur; int /*<<< orphan*/  usb; int /*<<< orphan*/  ac; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct twl4030_bci*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct twl4030_bci *bci = arg;

	FUNC0(bci->dev, "CHG_PRES irq\n");
	/* reset current on each 'plug' event */
	bci->ac_cur = 500000;
	FUNC2(bci);
	FUNC1(bci->ac);
	FUNC1(bci->usb);

	return IRQ_HANDLED;
}