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
struct spi_controller {int running; int /*<<< orphan*/  pump_messages; int /*<<< orphan*/  kworker; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/ * cur_msg; scalar_t__ busy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct spi_controller *ctlr)
{
	unsigned long flags;

	FUNC1(&ctlr->queue_lock, flags);

	if (ctlr->running || ctlr->busy) {
		FUNC2(&ctlr->queue_lock, flags);
		return -EBUSY;
	}

	ctlr->running = true;
	ctlr->cur_msg = NULL;
	FUNC2(&ctlr->queue_lock, flags);

	FUNC0(&ctlr->kworker, &ctlr->pump_messages);

	return 0;
}