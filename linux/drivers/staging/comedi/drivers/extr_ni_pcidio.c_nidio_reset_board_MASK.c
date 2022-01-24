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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ MASTER_DMA_AND_INTERRUPT_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	FUNC4(0, dev->mmio + FUNC0(0));
	FUNC4(0, dev->mmio + FUNC1(0));
	FUNC4(0, dev->mmio + FUNC2(0));

	/* disable interrupts on board */
	FUNC3(0, dev->mmio + MASTER_DMA_AND_INTERRUPT_CONTROL);
}