#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dim_channel {int dummy; } ;
struct dim2_hdm {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {unsigned long data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHANNELS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 TYPE_1__ dim2_tasklet ; 
 int /*<<< orphan*/  dim_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dim2_hdm*,struct dim_channel**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_dev)
{
	struct dim2_hdm *dev = _dev;
	struct dim_channel *buffer[DMA_CHANNELS + 1];
	unsigned long flags;

	FUNC2(&dim_lock, flags);
	FUNC0(FUNC1(dev, buffer));
	FUNC3(&dim_lock, flags);

	dim2_tasklet.data = (unsigned long)dev;
	FUNC4(&dim2_tasklet);
	return IRQ_HANDLED;
}