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
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ U300_WDOG_IER ; 
 int U300_WDOG_IER_WILL_BARK_IRQ_ACK_ENABLE ; 
 scalar_t__ U300_WDOG_IER_WILL_BARK_IRQ_EVENT_IND ; 
 scalar_t__ U300_WDOG_IMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  parent ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ virtbase ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	u16 val;

	/*
	 * Ack IRQ? If this occurs we're FUBAR anyway, so
	 * just acknowledge, disable the interrupt and await the imminent end.
	 * If you at some point need a host of callbacks to be called
	 * when the system is about to watchdog-reset, add them here!
	 *
	 * NOTE: on future versions of this IP-block, it will be possible
	 * to prevent a watchdog reset by feeding the watchdog at this
	 * point.
	 */
	val = FUNC1(virtbase + U300_WDOG_IER);
	if (val == U300_WDOG_IER_WILL_BARK_IRQ_EVENT_IND)
		FUNC2(U300_WDOG_IER_WILL_BARK_IRQ_ACK_ENABLE,
		       virtbase + U300_WDOG_IER);
	FUNC2(0x0000U, virtbase + U300_WDOG_IMR);
	FUNC0(parent, "watchdog is barking!\n");
	return IRQ_HANDLED;
}