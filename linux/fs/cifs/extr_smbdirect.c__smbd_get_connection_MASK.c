#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct smbd_connection {scalar_t__ transport_status; int keep_alive_interval; int responder_resources; TYPE_5__* id; int /*<<< orphan*/  pd; int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/ * send_cq; int /*<<< orphan*/  conn_wait; int /*<<< orphan*/  idle_timer_work; int /*<<< orphan*/  lock_new_credits_offered; scalar_t__ new_credits_offered; int /*<<< orphan*/  post_send_credits_work; int /*<<< orphan*/  recv_done_work; int /*<<< orphan*/  disconnect_work; int /*<<< orphan*/  send_payload_pending; int /*<<< orphan*/  wait_send_payload_pending; int /*<<< orphan*/  send_pending; int /*<<< orphan*/  wait_send_pending; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  send_immediate_work; int /*<<< orphan*/  wait_send_queue; int /*<<< orphan*/  wait_reassembly_queue; int /*<<< orphan*/  disconn_wait; int /*<<< orphan*/  receive_credit_max; int /*<<< orphan*/  send_credit_target; int /*<<< orphan*/  max_receive_size; int /*<<< orphan*/  max_fragmented_recv_size; int /*<<< orphan*/  max_send_size; } ;
struct TYPE_11__ {scalar_t__ max_inline_data; void* max_recv_sge; void* max_send_sge; int /*<<< orphan*/  max_recv_wr; int /*<<< orphan*/  max_send_wr; } ;
struct rdma_conn_param {int responder_resources; int* private_data; int private_data_len; scalar_t__ flow_control; int /*<<< orphan*/  rnr_retry_count; int /*<<< orphan*/  retry_count; scalar_t__ initiator_depth; int /*<<< orphan*/  port_num; int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/ * send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_1__ cap; struct smbd_connection* qp_context; int /*<<< orphan*/  event_handler; } ;
struct ib_qp_init_attr {int responder_resources; int* private_data; int private_data_len; scalar_t__ flow_control; int /*<<< orphan*/  rnr_retry_count; int /*<<< orphan*/  retry_count; scalar_t__ initiator_depth; int /*<<< orphan*/  port_num; int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/ * send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_1__ cap; struct smbd_connection* qp_context; int /*<<< orphan*/  event_handler; } ;
struct ib_port_immutable {int core_cap_flags; } ;
struct TCP_Server_Info {int dummy; } ;
typedef  int /*<<< orphan*/  qp_attr ;
typedef  int /*<<< orphan*/  ird_ord_hdr ;
typedef  int /*<<< orphan*/  conn_param ;
struct TYPE_15__ {int /*<<< orphan*/  port_num; TYPE_4__* device; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* get_port_immutable ) (TYPE_4__*,int /*<<< orphan*/ ,struct ib_port_immutable*) ;} ;
struct TYPE_13__ {void* max_send_sge; void* max_recv_sge; scalar_t__ max_qp_rd_atom; int /*<<< orphan*/  max_qp_wr; int /*<<< orphan*/  max_cqe; } ;
struct TYPE_14__ {TYPE_2__ ops; TYPE_3__ attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  IB_POLL_SOFTIRQ ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 int /*<<< orphan*/  IB_SIGNAL_REQ_WR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int RDMA_CORE_PORT_IWARP ; 
 void* SMBDIRECT_MAX_SGE ; 
 scalar_t__ SMBD_CM_RESPONDER_RESOURCES ; 
 int /*<<< orphan*/  SMBD_CM_RETRY ; 
 int /*<<< orphan*/  SMBD_CM_RNR_RETRY ; 
 scalar_t__ SMBD_CONNECTED ; 
 scalar_t__ SMBD_CONNECTING ; 
 scalar_t__ SMBD_DISCONNECTED ; 
 scalar_t__ SMBD_NEGOTIATE_FAILED ; 
 int FUNC3 (struct smbd_connection*) ; 
 int FUNC4 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct smbd_connection*) ; 
 void* FUNC8 (TYPE_4__*,struct smbd_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idle_connection_timer ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct smbd_connection*) ; 
 struct smbd_connection* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC18 (TYPE_5__*,struct rdma_conn_param*) ; 
 int FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,struct rdma_conn_param*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  send_immediate_work ; 
 int /*<<< orphan*/  FUNC23 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  smbd_disconnect_rdma_work ; 
 int FUNC24 (struct smbd_connection*,struct sockaddr*,int) ; 
 int smbd_keep_alive_interval ; 
 int /*<<< orphan*/  smbd_max_fragmented_recv_size ; 
 int /*<<< orphan*/  smbd_max_receive_size ; 
 int /*<<< orphan*/  smbd_max_send_size ; 
 int FUNC25 (struct smbd_connection*) ; 
 int /*<<< orphan*/  smbd_post_send_credits ; 
 int /*<<< orphan*/  smbd_qp_async_error_upcall ; 
 int /*<<< orphan*/  smbd_receive_credit_max ; 
 int /*<<< orphan*/  smbd_recv_done_work ; 
 int /*<<< orphan*/  smbd_send_credit_target ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*,int /*<<< orphan*/ ,struct ib_port_immutable*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct smbd_connection *FUNC30(
	struct TCP_Server_Info *server, struct sockaddr *dstaddr, int port)
{
	int rc;
	struct smbd_connection *info;
	struct rdma_conn_param conn_param;
	struct ib_qp_init_attr qp_attr;
	struct sockaddr_in *addr_in = (struct sockaddr_in *) dstaddr;
	struct ib_port_immutable port_immutable;
	u32 ird_ord_hdr[2];

	info = FUNC13(sizeof(struct smbd_connection), GFP_KERNEL);
	if (!info)
		return NULL;

	info->transport_status = SMBD_CONNECTING;
	rc = FUNC24(info, dstaddr, port);
	if (rc) {
		FUNC14(INFO, "smbd_ia_open rc=%d\n", rc);
		goto create_id_failed;
	}

	if (smbd_send_credit_target > info->id->device->attrs.max_cqe ||
	    smbd_send_credit_target > info->id->device->attrs.max_qp_wr) {
		FUNC14(ERR,
			"consider lowering send_credit_target = %d. "
			"Possible CQE overrun, device "
			"reporting max_cpe %d max_qp_wr %d\n",
			smbd_send_credit_target,
			info->id->device->attrs.max_cqe,
			info->id->device->attrs.max_qp_wr);
		goto config_failed;
	}

	if (smbd_receive_credit_max > info->id->device->attrs.max_cqe ||
	    smbd_receive_credit_max > info->id->device->attrs.max_qp_wr) {
		FUNC14(ERR,
			"consider lowering receive_credit_max = %d. "
			"Possible CQE overrun, device "
			"reporting max_cpe %d max_qp_wr %d\n",
			smbd_receive_credit_max,
			info->id->device->attrs.max_cqe,
			info->id->device->attrs.max_qp_wr);
		goto config_failed;
	}

	info->receive_credit_max = smbd_receive_credit_max;
	info->send_credit_target = smbd_send_credit_target;
	info->max_send_size = smbd_max_send_size;
	info->max_fragmented_recv_size = smbd_max_fragmented_recv_size;
	info->max_receive_size = smbd_max_receive_size;
	info->keep_alive_interval = smbd_keep_alive_interval;

	if (info->id->device->attrs.max_send_sge < SMBDIRECT_MAX_SGE) {
		FUNC14(ERR,
			"warning: device max_send_sge = %d too small\n",
			info->id->device->attrs.max_send_sge);
		FUNC14(ERR, "Queue Pair creation may fail\n");
	}
	if (info->id->device->attrs.max_recv_sge < SMBDIRECT_MAX_SGE) {
		FUNC14(ERR,
			"warning: device max_recv_sge = %d too small\n",
			info->id->device->attrs.max_recv_sge);
		FUNC14(ERR, "Queue Pair creation may fail\n");
	}

	info->send_cq = NULL;
	info->recv_cq = NULL;
	info->send_cq =
		FUNC8(info->id->device, info,
				info->send_credit_target, IB_POLL_SOFTIRQ);
	if (FUNC2(info->send_cq)) {
		info->send_cq = NULL;
		goto alloc_cq_failed;
	}

	info->recv_cq =
		FUNC8(info->id->device, info,
				info->receive_credit_max, IB_POLL_SOFTIRQ);
	if (FUNC2(info->recv_cq)) {
		info->recv_cq = NULL;
		goto alloc_cq_failed;
	}

	FUNC16(&qp_attr, 0, sizeof(qp_attr));
	qp_attr.event_handler = smbd_qp_async_error_upcall;
	qp_attr.qp_context = info;
	qp_attr.cap.max_send_wr = info->send_credit_target;
	qp_attr.cap.max_recv_wr = info->receive_credit_max;
	qp_attr.cap.max_send_sge = SMBDIRECT_MAX_SGE;
	qp_attr.cap.max_recv_sge = SMBDIRECT_MAX_SGE;
	qp_attr.cap.max_inline_data = 0;
	qp_attr.sq_sig_type = IB_SIGNAL_REQ_WR;
	qp_attr.qp_type = IB_QPT_RC;
	qp_attr.send_cq = info->send_cq;
	qp_attr.recv_cq = info->recv_cq;
	qp_attr.port_num = ~0;

	rc = FUNC19(info->id, info->pd, &qp_attr);
	if (rc) {
		FUNC14(ERR, "rdma_create_qp failed %i\n", rc);
		goto create_qp_failed;
	}

	FUNC16(&conn_param, 0, sizeof(conn_param));
	conn_param.initiator_depth = 0;

	conn_param.responder_resources =
		info->id->device->attrs.max_qp_rd_atom
			< SMBD_CM_RESPONDER_RESOURCES ?
		info->id->device->attrs.max_qp_rd_atom :
		SMBD_CM_RESPONDER_RESOURCES;
	info->responder_resources = conn_param.responder_resources;
	FUNC15(INFO, "responder_resources=%d\n",
		info->responder_resources);

	/* Need to send IRD/ORD in private data for iWARP */
	info->id->device->ops.get_port_immutable(
		info->id->device, info->id->port_num, &port_immutable);
	if (port_immutable.core_cap_flags & RDMA_CORE_PORT_IWARP) {
		ird_ord_hdr[0] = info->responder_resources;
		ird_ord_hdr[1] = 1;
		conn_param.private_data = ird_ord_hdr;
		conn_param.private_data_len = sizeof(ird_ord_hdr);
	} else {
		conn_param.private_data = NULL;
		conn_param.private_data_len = 0;
	}

	conn_param.retry_count = SMBD_CM_RETRY;
	conn_param.rnr_retry_count = SMBD_CM_RNR_RETRY;
	conn_param.flow_control = 0;

	FUNC14(INFO, "connecting to IP %pI4 port %d\n",
		&addr_in->sin_addr, port);

	FUNC11(&info->conn_wait);
	FUNC11(&info->disconn_wait);
	FUNC11(&info->wait_reassembly_queue);
	rc = FUNC18(info->id, &conn_param);
	if (rc) {
		FUNC14(ERR, "rdma_connect() failed with %i\n", rc);
		goto rdma_connect_failed;
	}

	FUNC29(
		info->conn_wait, info->transport_status != SMBD_CONNECTING);

	if (info->transport_status != SMBD_CONNECTED) {
		FUNC14(ERR, "rdma_connect failed port=%d\n", port);
		goto rdma_connect_failed;
	}

	FUNC14(INFO, "rdma_connect connected\n");

	rc = FUNC3(info);
	if (rc) {
		FUNC14(ERR, "cache allocation failed\n");
		goto allocate_cache_failed;
	}

	FUNC11(&info->wait_send_queue);
	FUNC0(&info->idle_timer_work, idle_connection_timer);
	FUNC0(&info->send_immediate_work, send_immediate_work);
	FUNC17(info->workqueue, &info->idle_timer_work,
		info->keep_alive_interval*HZ);

	FUNC11(&info->wait_send_pending);
	FUNC5(&info->send_pending, 0);

	FUNC11(&info->wait_send_payload_pending);
	FUNC5(&info->send_payload_pending, 0);

	FUNC1(&info->disconnect_work, smbd_disconnect_rdma_work);
	FUNC1(&info->recv_done_work, smbd_recv_done_work);
	FUNC1(&info->post_send_credits_work, smbd_post_send_credits);
	info->new_credits_offered = 0;
	FUNC26(&info->lock_new_credits_offered);

	rc = FUNC25(info);
	if (rc) {
		FUNC14(ERR, "smbd_negotiate rc=%d\n", rc);
		goto negotiation_failed;
	}

	rc = FUNC4(info);
	if (rc) {
		FUNC15(ERR, "memory registration allocation failed\n");
		goto allocate_mr_failed;
	}

	return info;

allocate_mr_failed:
	/* At this point, need to a full transport shutdown */
	FUNC23(server);
	return NULL;

negotiation_failed:
	FUNC6(&info->idle_timer_work);
	FUNC7(info);
	info->transport_status = SMBD_NEGOTIATE_FAILED;
	FUNC11(&info->conn_wait);
	FUNC22(info->id);
	FUNC28(info->conn_wait,
		info->transport_status == SMBD_DISCONNECTED);

allocate_cache_failed:
rdma_connect_failed:
	FUNC21(info->id);

create_qp_failed:
alloc_cq_failed:
	if (info->send_cq)
		FUNC10(info->send_cq);
	if (info->recv_cq)
		FUNC10(info->recv_cq);

config_failed:
	FUNC9(info->pd);
	FUNC20(info->id);

create_id_failed:
	FUNC12(info);
	return NULL;
}