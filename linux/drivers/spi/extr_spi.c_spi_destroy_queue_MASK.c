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
struct spi_controller {int /*<<< orphan*/  kworker_task; int /*<<< orphan*/  kworker; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct spi_controller *ctlr)
{
	int ret;

	ret = FUNC3(ctlr);

	/*
	 * kthread_flush_worker will block until all work is done.
	 * If the reason that stop_queue timed out is that the work will never
	 * finish, then it does no good to call flush/stop thread, so
	 * return anyway.
	 */
	if (ret) {
		FUNC0(&ctlr->dev, "problem destroying queue\n");
		return ret;
	}

	FUNC1(&ctlr->kworker);
	FUNC2(ctlr->kworker_task);

	return 0;
}