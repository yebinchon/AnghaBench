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
struct mv_otg {int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct mv_otg*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_otg*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_otg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev)
{
	struct mv_otg *mvotg = dev;

	/* The clock may disabled at this time */
	if (!mvotg->active) {
		FUNC0(mvotg);
		FUNC1(mvotg);
	}

	FUNC2(mvotg, 0);

	return IRQ_HANDLED;
}