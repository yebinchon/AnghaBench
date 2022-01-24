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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned char WDC_SR_FANGOOD ; 
 unsigned char WDC_SR_PSUOVER ; 
 unsigned char WDC_SR_PSUUNDR ; 
 unsigned char WDC_SR_TGOOD ; 
 unsigned char WDC_SR_WCCR ; 
 int /*<<< orphan*/  WDT_RT ; 
 int /*<<< orphan*/  WDT_SR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ tachometer ; 
 int type ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  wdtpci_lock ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	/*
	 *	Read the status register see what is up and
	 *	then printk it.
	 */
	unsigned char status;

	FUNC3(&wdtpci_lock);

	status = FUNC1(WDT_SR);
	FUNC5(8);

	FUNC2("status %d\n", status);

	if (type == 501) {
		if (!(status & WDC_SR_TGOOD)) {
			FUNC2("Overheat alarm (%d)\n", FUNC1(WDT_RT));
			FUNC5(8);
		}
		if (!(status & WDC_SR_PSUOVER))
			FUNC2("PSU over voltage\n");
		if (!(status & WDC_SR_PSUUNDR))
			FUNC2("PSU under voltage\n");
		if (tachometer) {
			if (!(status & WDC_SR_FANGOOD))
				FUNC2("Possible fan fault\n");
		}
	}
	if (!(status & WDC_SR_WCCR)) {
#ifdef SOFTWARE_REBOOT
#ifdef ONLY_TESTING
		pr_crit("Would Reboot\n");
#else
		pr_crit("Initiating system reboot\n");
		emergency_restart();
#endif
#else
		FUNC2("Reset in 5ms\n");
#endif
	}
	FUNC4(&wdtpci_lock);
	return IRQ_HANDLED;
}