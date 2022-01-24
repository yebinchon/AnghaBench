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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_soctherm {scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ OC_INTR_DISABLE ; 
 scalar_t__ OC_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *arg)
{
	struct tegra_soctherm *ts = arg;
	u32 r;

	if (!ts)
		return IRQ_NONE;

	r = FUNC0(ts->regs + OC_INTR_STATUS);
	FUNC1(r, ts->regs + OC_INTR_DISABLE);

	return IRQ_WAKE_THREAD;
}