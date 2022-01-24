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
struct iscsi_conn {int /*<<< orphan*/  queues_wq; int /*<<< orphan*/  response_queue_lock; int /*<<< orphan*/  response_queue_list; } ;
struct iscsi_cmd {int /*<<< orphan*/  response_queue_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iscsi_queue_req* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lio_qr_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn,
	u8 state)
{
	struct iscsi_queue_req *qr;

	qr = FUNC2(lio_qr_cache, GFP_ATOMIC);
	if (!qr) {
		FUNC4("Unable to allocate memory for"
			" struct iscsi_queue_req\n");
		return -ENOMEM;
	}
	FUNC0(&qr->qr_list);
	qr->cmd = cmd;
	qr->state = state;

	FUNC5(&conn->response_queue_lock);
	FUNC3(&qr->qr_list, &conn->response_queue_list);
	FUNC1(&cmd->response_queue_count);
	FUNC6(&conn->response_queue_lock);

	FUNC7(&conn->queues_wq);
	return 0;
}