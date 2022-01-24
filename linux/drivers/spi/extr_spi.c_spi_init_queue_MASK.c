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
struct spi_controller {int running; int busy; scalar_t__ rt; int /*<<< orphan*/  pump_messages; int /*<<< orphan*/  kworker_task; int /*<<< orphan*/  dev; int /*<<< orphan*/  kworker; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kthread_worker_fn ; 
 int /*<<< orphan*/  spi_pump_messages ; 
 int /*<<< orphan*/  FUNC7 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC8(struct spi_controller *ctlr)
{
	ctlr->running = false;
	ctlr->busy = false;

	FUNC5(&ctlr->kworker);
	ctlr->kworker_task = FUNC6(kthread_worker_fn, &ctlr->kworker,
					 "%s", FUNC3(&ctlr->dev));
	if (FUNC0(ctlr->kworker_task)) {
		FUNC2(&ctlr->dev, "failed to create message pump task\n");
		return FUNC1(ctlr->kworker_task);
	}
	FUNC4(&ctlr->pump_messages, spi_pump_messages);

	/*
	 * Controller config will indicate if this controller should run the
	 * message pump with high (realtime) priority to reduce the transfer
	 * latency on the bus by minimising the delay between a transfer
	 * request and the scheduling of the message pump thread. Without this
	 * setting the message pump thread will remain at default priority.
	 */
	if (ctlr->rt)
		FUNC7(ctlr);

	return 0;
}