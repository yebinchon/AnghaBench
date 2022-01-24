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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (void*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_instance)
{
	/* if hvc_poll request a repoll, then kick the hvcd thread */
	if (FUNC1(dev_instance))
		FUNC0();

	/*
	 * We're safe to always return IRQ_HANDLED as the hvcd thread will
	 * iterate through each hvc_struct.
	 */
	return IRQ_HANDLED;
}