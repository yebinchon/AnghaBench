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
typedef  int u8 ;
struct twl4030_bci {int /*<<< orphan*/  dev; int /*<<< orphan*/  usb; int /*<<< orphan*/  ac; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int TWL4030_ACCHGOV ; 
 int TWL4030_BATSTS ; 
 int TWL4030_ICHGEOC ; 
 int TWL4030_ICHGLOW ; 
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIISR1A ; 
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIISR2A ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTERRUPTS ; 
 int TWL4030_TBATOR1 ; 
 int TWL4030_TBATOR2 ; 
 int TWL4030_VBATOV ; 
 int TWL4030_VBUSOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct twl4030_bci*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *arg)
{
	struct twl4030_bci *bci = arg;
	u8 irqs1, irqs2;
	int ret;

	ret = FUNC5(TWL4030_MODULE_INTERRUPTS, &irqs1,
			      TWL4030_INTERRUPTS_BCIISR1A);
	if (ret < 0)
		return IRQ_HANDLED;

	ret = FUNC5(TWL4030_MODULE_INTERRUPTS, &irqs2,
			      TWL4030_INTERRUPTS_BCIISR2A);
	if (ret < 0)
		return IRQ_HANDLED;

	FUNC1(bci->dev, "BCI irq %02x %02x\n", irqs2, irqs1);

	if (irqs1 & (TWL4030_ICHGLOW | TWL4030_ICHGEOC)) {
		/* charger state change, inform the core */
		FUNC3(bci->ac);
		FUNC3(bci->usb);
	}
	FUNC4(bci);

	/* various monitoring events, for now we just log them here */
	if (irqs1 & (TWL4030_TBATOR2 | TWL4030_TBATOR1))
		FUNC2(bci->dev, "battery temperature out of range\n");

	if (irqs1 & TWL4030_BATSTS)
		FUNC0(bci->dev, "battery disconnected\n");

	if (irqs2 & TWL4030_VBATOV)
		FUNC0(bci->dev, "VBAT overvoltage\n");

	if (irqs2 & TWL4030_VBUSOV)
		FUNC0(bci->dev, "VBUS overvoltage\n");

	if (irqs2 & TWL4030_ACCHGOV)
		FUNC0(bci->dev, "Ac charger overvoltage\n");

	return IRQ_HANDLED;
}