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
struct iscsi_tcp_task {struct cxgbi_task_data* dd_data; } ;
struct iscsi_task {int /*<<< orphan*/  hdr_itt; int /*<<< orphan*/ * hdr; int /*<<< orphan*/  sc; struct iscsi_tcp_task* dd_data; } ;
struct cxgbi_task_data {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int CXGBI_DBG_ISCSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cxgbi_task_data* FUNC1 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct iscsi_task*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_task_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct iscsi_task*,int /*<<< orphan*/ ,struct iscsi_tcp_task*,struct cxgbi_task_data*,struct cxgbi_task_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_task*,int /*<<< orphan*/ ) ; 

void FUNC8(struct iscsi_task *task)
{
	struct iscsi_tcp_task *tcp_task = task->dd_data;
	struct cxgbi_task_data *tdata = FUNC1(task);

	if (!tcp_task || !tdata || (tcp_task->dd_data != tdata)) {
		FUNC6("task 0x%p,0x%p, tcp_task 0x%p, tdata 0x%p/0x%p.\n",
			task, task->sc, tcp_task,
			tcp_task ? tcp_task->dd_data : NULL, tdata);
		return;
	}

	FUNC4(1 << CXGBI_DBG_ISCSI,
		"task 0x%p, skb 0x%p, itt 0x%x.\n",
		task, tdata->skb, task->hdr_itt);

	tcp_task->dd_data = NULL;

	if (!task->sc)
		FUNC3(task->hdr);
	task->hdr = NULL;

	/*  never reached the xmit task callout */
	if (tdata->skb) {
		FUNC0(tdata->skb);
		tdata->skb = NULL;
	}

	FUNC7(task, task->hdr_itt);
	FUNC5(tdata, 0, sizeof(*tdata));

	FUNC2(task);
}