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
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct iscsi_tcp_task {int /*<<< orphan*/  queue2pool; struct iscsi_r2t_info* r2t; int /*<<< orphan*/  r2tqueue; TYPE_1__ r2tpool; } ;
struct iscsi_r2t_info {scalar_t__ data_length; scalar_t__ sent; } ;
struct iscsi_task {int /*<<< orphan*/  conn; struct iscsi_r2t_info unsol_r2t; struct iscsi_tcp_task* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct iscsi_r2t_info*) ; 
 scalar_t__ FUNC1 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iscsi_r2t_info *FUNC6(struct iscsi_task *task)
{
	struct iscsi_tcp_task *tcp_task = task->dd_data;
	struct iscsi_r2t_info *r2t = NULL;

	if (FUNC1(task))
		r2t = &task->unsol_r2t;
	else {
		FUNC4(&tcp_task->queue2pool);
		if (tcp_task->r2t) {
			r2t = tcp_task->r2t;
			/* Continue with this R2T? */
			if (r2t->data_length <= r2t->sent) {
				FUNC0(task->conn,
					      "  done with r2t %p\n", r2t);
				FUNC2(&tcp_task->r2tpool.queue,
					    (void *)&tcp_task->r2t,
					    sizeof(void *));
				tcp_task->r2t = r2t = NULL;
			}
		}

		if (r2t == NULL) {
			if (FUNC3(&tcp_task->r2tqueue,
			    (void *)&tcp_task->r2t, sizeof(void *)) !=
			    sizeof(void *))
				r2t = NULL;
			else
				r2t = tcp_task->r2t;
		}
		FUNC5(&tcp_task->queue2pool);
	}

	return r2t;
}