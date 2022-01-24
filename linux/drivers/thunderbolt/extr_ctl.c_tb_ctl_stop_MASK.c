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
struct tb_ctl {int running; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  request_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_ctl*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_ctl*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct tb_ctl *ctl)
{
	FUNC2(&ctl->request_queue_lock);
	ctl->running = false;
	FUNC3(&ctl->request_queue_lock);

	FUNC6(ctl->rx);
	FUNC6(ctl->tx);

	if (!FUNC1(&ctl->request_queue))
		FUNC4(ctl, "dangling request in request_queue\n");
	FUNC0(&ctl->request_queue);
	FUNC5(ctl, "control channel stopped\n");
}