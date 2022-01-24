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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_thermctl_zone {TYPE_1__* ts; TYPE_2__* sg; } ;
struct TYPE_4__ {int /*<<< orphan*/  thermctl_isr_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  thermctl_lock; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ THERMCTL_INTR_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tegra_thermctl_zone *zn)
{
	u32 r;

	/* multiple zones could be handling and setting trips at once */
	FUNC1(&zn->ts->thermctl_lock);
	r = FUNC3(zn->ts->regs + THERMCTL_INTR_DISABLE);
	r = FUNC0(r, zn->sg->thermctl_isr_mask, 0);
	FUNC4(r, zn->ts->regs + THERMCTL_INTR_DISABLE);
	FUNC2(&zn->ts->thermctl_lock);
}