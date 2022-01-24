#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dim2_hdm {size_t atx_idx; TYPE_1__* hch; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ is_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  dim_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_dev)
{
	struct dim2_hdm *dev = _dev;
	unsigned long flags;

	FUNC1(&dim_lock, flags);
	FUNC0();
	FUNC2(&dim_lock, flags);

	if (dev->atx_idx >= 0 && dev->hch[dev->atx_idx].is_initialized)
		while (!FUNC3(dev->hch + dev->atx_idx))
			continue;

	return IRQ_HANDLED;
}