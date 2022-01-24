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
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 scalar_t__ FUNC0 (int,void*) ; 
 scalar_t__ FUNC1 (int,void*) ; 
 scalar_t__ FUNC2 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	if (FUNC1(irq, data) == IRQ_HANDLED)
		return IRQ_HANDLED;

	if (FUNC2(irq, data) == IRQ_HANDLED)
		return IRQ_HANDLED;

	if (FUNC0(irq, data) == IRQ_HANDLED)
		return IRQ_HANDLED;

	return IRQ_NONE;
}