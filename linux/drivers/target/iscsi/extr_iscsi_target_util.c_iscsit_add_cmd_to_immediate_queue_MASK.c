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
typedef  int /*<<< orphan*/  u8 ;
struct iscsi_queue_req {int /*<<< orphan*/  qr_list; int /*<<< orphan*/  state; struct iscsi_cmd* cmd; } ;
struct iscsi_conn {int /*<<< orphan*/  queues_wq; int /*<<< orphan*/  immed_queue_lock; int /*<<< orphan*/  check_immediate_queue; int /*<<< orphan*/  immed_queue_list; } ;
struct iscsi_cmd {int /*<<< orphan*/  immed_queue_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct iscsi_queue_req* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lio_qr_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn,
	u8 state)
{
	struct iscsi_queue_req *qr;

	qr = FUNC3(lio_qr_cache, GFP_ATOMIC);
	if (!qr) {
		FUNC5("Unable to allocate memory for"
				" struct iscsi_queue_req\n");
		return;
	}
	FUNC0(&qr->qr_list);
	qr->cmd = cmd;
	qr->state = state;

	FUNC6(&conn->immed_queue_lock);
	FUNC4(&qr->qr_list, &conn->immed_queue_list);
	FUNC1(&cmd->immed_queue_count);
	FUNC2(&conn->check_immediate_queue, 1);
	FUNC7(&conn->immed_queue_lock);

	FUNC8(&conn->queues_wq);
}