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
struct iscsi_tcp_task {int /*<<< orphan*/  r2tpool; int /*<<< orphan*/  r2tqueue; int /*<<< orphan*/  queue2pool; int /*<<< orphan*/  pool2queue; } ;
struct iscsi_task {struct iscsi_tcp_task* dd_data; } ;
struct iscsi_session {int cmds_max; int max_r2t; struct iscsi_task** cmds; } ;
struct iscsi_r2t_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iscsi_session *session)
{
	int i;
	int cmd_i;

	/*
	 * initialize per-task: R2T pool and xmit queue
	 */
	for (cmd_i = 0; cmd_i < session->cmds_max; cmd_i++) {
	        struct iscsi_task *task = session->cmds[cmd_i];
		struct iscsi_tcp_task *tcp_task = task->dd_data;

		/*
		 * pre-allocated x2 as much r2ts to handle race when
		 * target acks DataOut faster than we data_xmit() queues
		 * could replenish r2tqueue.
		 */

		/* R2T pool */
		if (FUNC1(&tcp_task->r2tpool,
				    session->max_r2t * 2, NULL,
				    sizeof(struct iscsi_r2t_info))) {
			goto r2t_alloc_fail;
		}

		/* R2T xmit queue */
		if (FUNC2(&tcp_task->r2tqueue,
		      session->max_r2t * 4 * sizeof(void*), GFP_KERNEL)) {
			FUNC0(&tcp_task->r2tpool);
			goto r2t_alloc_fail;
		}
		FUNC4(&tcp_task->pool2queue);
		FUNC4(&tcp_task->queue2pool);
	}

	return 0;

r2t_alloc_fail:
	for (i = 0; i < cmd_i; i++) {
		struct iscsi_task *task = session->cmds[i];
		struct iscsi_tcp_task *tcp_task = task->dd_data;

		FUNC3(&tcp_task->r2tqueue);
		FUNC0(&tcp_task->r2tpool);
	}
	return -ENOMEM;
}