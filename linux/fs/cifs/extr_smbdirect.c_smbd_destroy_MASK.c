#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smbd_response {int /*<<< orphan*/  list; } ;
struct smbd_connection {scalar_t__ transport_status; scalar_t__ count_receive_queue; scalar_t__ count_empty_packet_queue; scalar_t__ receive_credit_max; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  response_cache; int /*<<< orphan*/  response_mempool; int /*<<< orphan*/  request_cache; int /*<<< orphan*/  request_mempool; TYPE_1__* id; int /*<<< orphan*/  pd; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  mr_used_count; int /*<<< orphan*/  wait_mr; int /*<<< orphan*/  wait_receive_queues; scalar_t__ reassembly_data_length; int /*<<< orphan*/  reassembly_queue_lock; int /*<<< orphan*/  send_payload_pending; int /*<<< orphan*/  wait_send_payload_pending; int /*<<< orphan*/  send_pending; int /*<<< orphan*/  wait_send_pending; int /*<<< orphan*/  send_immediate_work; int /*<<< orphan*/  idle_timer_work; int /*<<< orphan*/  disconn_wait; } ;
struct TCP_Server_Info {int /*<<< orphan*/  srv_mutex; struct smbd_connection* smbd_conn; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 scalar_t__ SMBD_DESTROYED ; 
 scalar_t__ SMBD_DISCONNECTED ; 
 struct smbd_response* FUNC0 (struct smbd_connection*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct smbd_connection*,struct smbd_response*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

void FUNC26(struct TCP_Server_Info *server)
{
	struct smbd_connection *info = server->smbd_conn;
	struct smbd_response *response;
	unsigned long flags;

	if (!info) {
		FUNC12(INFO, "rdma session already destroyed\n");
		return;
	}

	FUNC12(INFO, "destroying rdma session\n");
	if (info->transport_status != SMBD_DISCONNECTED) {
		FUNC20(server->smbd_conn->id);
		FUNC12(INFO, "wait for transport being disconnected\n");
		FUNC24(
			info->disconn_wait,
			info->transport_status == SMBD_DISCONNECTED);
	}

	FUNC12(INFO, "destroying qp\n");
	FUNC7(info->id->qp);
	FUNC19(info->id);

	FUNC12(INFO, "cancelling idle timer\n");
	FUNC2(&info->idle_timer_work);
	FUNC12(INFO, "cancelling send immediate work\n");
	FUNC2(&info->send_immediate_work);

	FUNC12(INFO, "wait for all send posted to IB to finish\n");
	FUNC23(info->wait_send_pending,
		FUNC1(&info->send_pending) == 0);
	FUNC23(info->wait_send_payload_pending,
		FUNC1(&info->send_payload_pending) == 0);

	/* It's not posssible for upper layer to get to reassembly */
	FUNC12(INFO, "drain the reassembly queue\n");
	do {
		FUNC21(&info->reassembly_queue_lock, flags);
		response = FUNC0(info);
		if (response) {
			FUNC11(&response->list);
			FUNC22(
				&info->reassembly_queue_lock, flags);
			FUNC17(info, response);
		} else
			FUNC22(
				&info->reassembly_queue_lock, flags);
	} while (response);
	info->reassembly_data_length = 0;

	FUNC12(INFO, "free receive buffers\n");
	FUNC23(info->wait_receive_queues,
		info->count_receive_queue + info->count_empty_packet_queue
			== info->receive_credit_max);
	FUNC4(info);

	/*
	 * For performance reasons, memory registration and deregistration
	 * are not locked by srv_mutex. It is possible some processes are
	 * blocked on transport srv_mutex while holding memory registration.
	 * Release the transport srv_mutex to allow them to hit the failure
	 * path when sending data, and then release memory registartions.
	 */
	FUNC12(INFO, "freeing mr list\n");
	FUNC25(&info->wait_mr);
	while (FUNC1(&info->mr_used_count)) {
		FUNC16(&server->srv_mutex);
		FUNC14(1000);
		FUNC15(&server->srv_mutex);
	}
	FUNC3(info);

	FUNC8(info->send_cq);
	FUNC8(info->recv_cq);
	FUNC6(info->pd);
	FUNC18(info->id);

	/* free mempools */
	FUNC13(info->request_mempool);
	FUNC10(info->request_cache);

	FUNC13(info->response_mempool);
	FUNC10(info->response_cache);

	info->transport_status = SMBD_DESTROYED;

	FUNC5(info->workqueue);
	FUNC9(info);
}