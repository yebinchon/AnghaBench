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
struct spi_controller {int running; int /*<<< orphan*/  dev; int /*<<< orphan*/  queue_lock; scalar_t__ busy; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *ctlr)
{
	unsigned long flags;
	unsigned limit = 500;
	int ret = 0;

	FUNC2(&ctlr->queue_lock, flags);

	/*
	 * This is a bit lame, but is optimized for the common execution path.
	 * A wait_queue on the ctlr->busy could be used, but then the common
	 * execution path (pump_messages) would be required to call wake_up or
	 * friends on every SPI message. Do this instead.
	 */
	while ((!FUNC1(&ctlr->queue) || ctlr->busy) && limit--) {
		FUNC3(&ctlr->queue_lock, flags);
		FUNC4(10000, 11000);
		FUNC2(&ctlr->queue_lock, flags);
	}

	if (!FUNC1(&ctlr->queue) || ctlr->busy)
		ret = -EBUSY;
	else
		ctlr->running = false;

	FUNC3(&ctlr->queue_lock, flags);

	if (ret) {
		FUNC0(&ctlr->dev, "could not stop message queue\n");
		return ret;
	}
	return ret;
}