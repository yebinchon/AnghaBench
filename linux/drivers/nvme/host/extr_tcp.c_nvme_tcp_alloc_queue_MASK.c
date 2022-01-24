#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct nvme_tcp_rsp_pdu {int dummy; } ;
struct nvme_tcp_queue {size_t queue_size; int cmnd_capsule_len; int rd_enabled; TYPE_3__* sock; scalar_t__ data_digest; scalar_t__ hdr_digest; int /*<<< orphan*/  pdu; int /*<<< orphan*/  write_space; int /*<<< orphan*/  data_ready; int /*<<< orphan*/  state_change; int /*<<< orphan*/  flags; scalar_t__ pdu_offset; scalar_t__ pdu_remaining; scalar_t__ ddgst_remaining; scalar_t__ data_remaining; int /*<<< orphan*/ * request; int /*<<< orphan*/  io_cpu; int /*<<< orphan*/  io_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  send_list; struct nvme_tcp_ctrl* ctrl; } ;
struct TYPE_10__ {int /*<<< orphan*/  ss_family; } ;
struct nvme_tcp_ctrl {TYPE_1__ addr; int /*<<< orphan*/  src_addr; struct nvme_tcp_queue* queues; } ;
struct nvme_ctrl {int ioccsz; int /*<<< orphan*/  device; TYPE_2__* opts; } ;
struct nvme_command {int dummy; } ;
struct linger {int l_onoff; int /*<<< orphan*/  l_linger; } ;
typedef  int /*<<< orphan*/  sol ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_13__ {int sk_ll_usec; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_data_ready; struct nvme_tcp_queue* sk_user_data; int /*<<< orphan*/  sk_allocation; } ;
struct TYPE_12__ {TYPE_5__* sk; } ;
struct TYPE_11__ {int tos; int mask; scalar_t__ data_digest; scalar_t__ hdr_digest; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_TOS ; 
 int NVME_TCP_ADMIN_CCSZ ; 
 int /*<<< orphan*/  NVME_TCP_Q_ALLOCATED ; 
 int NVMF_OPT_HOST_TRADDR ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  TCP_SYNCNT ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC5 (TYPE_3__*,struct sockaddr*,int) ; 
 int FUNC6 (TYPE_3__*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int FUNC12 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  nvme_tcp_data_ready ; 
 int /*<<< orphan*/  FUNC13 (struct nvme_tcp_queue*) ; 
 int FUNC14 (struct nvme_tcp_queue*) ; 
 int FUNC15 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC16 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  nvme_tcp_io_work ; 
 int /*<<< orphan*/  FUNC17 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  nvme_tcp_state_change ; 
 int /*<<< orphan*/  nvme_tcp_write_space ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct nvme_tcp_ctrl* FUNC23 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct nvme_ctrl *nctrl,
		int qid, size_t queue_size)
{
	struct nvme_tcp_ctrl *ctrl = FUNC23(nctrl);
	struct nvme_tcp_queue *queue = &ctrl->queues[qid];
	struct linger sol = { .l_onoff = 1, .l_linger = 0 };
	int ret, opt, rcv_pdu_size, n;

	queue->ctrl = ctrl;
	FUNC0(&queue->send_list);
	FUNC22(&queue->lock);
	FUNC1(&queue->io_work, nvme_tcp_io_work);
	queue->queue_size = queue_size;

	if (qid > 0)
		queue->cmnd_capsule_len = nctrl->ioccsz * 16;
	else
		queue->cmnd_capsule_len = sizeof(struct nvme_command) +
						NVME_TCP_ADMIN_CCSZ;

	ret = FUNC20(ctrl->addr.ss_family, SOCK_STREAM,
			IPPROTO_TCP, &queue->sock);
	if (ret) {
		FUNC4(nctrl->device,
			"failed to create socket: %d\n", ret);
		return ret;
	}

	/* Single syn retry */
	opt = 1;
	ret = FUNC7(queue->sock, IPPROTO_TCP, TCP_SYNCNT,
			(char *)&opt, sizeof(opt));
	if (ret) {
		FUNC4(nctrl->device,
			"failed to set TCP_SYNCNT sock opt %d\n", ret);
		goto err_sock;
	}

	/* Set TCP no delay */
	opt = 1;
	ret = FUNC7(queue->sock, IPPROTO_TCP,
			TCP_NODELAY, (char *)&opt, sizeof(opt));
	if (ret) {
		FUNC4(nctrl->device,
			"failed to set TCP_NODELAY sock opt %d\n", ret);
		goto err_sock;
	}

	/*
	 * Cleanup whatever is sitting in the TCP transmit queue on socket
	 * close. This is done to prevent stale data from being sent should
	 * the network connection be restored before TCP times out.
	 */
	ret = FUNC7(queue->sock, SOL_SOCKET, SO_LINGER,
			(char *)&sol, sizeof(sol));
	if (ret) {
		FUNC4(nctrl->device,
			"failed to set SO_LINGER sock opt %d\n", ret);
		goto err_sock;
	}

	/* Set socket type of service */
	if (nctrl->opts->tos >= 0) {
		opt = nctrl->opts->tos;
		ret = FUNC7(queue->sock, SOL_IP, IP_TOS,
				(char *)&opt, sizeof(opt));
		if (ret) {
			FUNC4(nctrl->device,
				"failed to set IP_TOS sock opt %d\n", ret);
			goto err_sock;
		}
	}

	queue->sock->sk->sk_allocation = GFP_ATOMIC;
	if (!qid)
		n = 0;
	else
		n = (qid - 1) % FUNC11();
	queue->io_cpu = FUNC2(n - 1, cpu_online_mask, -1, false);
	queue->request = NULL;
	queue->data_remaining = 0;
	queue->ddgst_remaining = 0;
	queue->pdu_remaining = 0;
	queue->pdu_offset = 0;
	FUNC19(queue->sock->sk);

	if (nctrl->opts->mask & NVMF_OPT_HOST_TRADDR) {
		ret = FUNC5(queue->sock, (struct sockaddr *)&ctrl->src_addr,
			sizeof(ctrl->src_addr));
		if (ret) {
			FUNC4(nctrl->device,
				"failed to bind queue %d socket %d\n",
				qid, ret);
			goto err_sock;
		}
	}

	queue->hdr_digest = nctrl->opts->hdr_digest;
	queue->data_digest = nctrl->opts->data_digest;
	if (queue->hdr_digest || queue->data_digest) {
		ret = FUNC12(queue);
		if (ret) {
			FUNC4(nctrl->device,
				"failed to allocate queue %d crypto\n", qid);
			goto err_sock;
		}
	}

	rcv_pdu_size = sizeof(struct nvme_tcp_rsp_pdu) +
			FUNC14(queue);
	queue->pdu = FUNC10(rcv_pdu_size, GFP_KERNEL);
	if (!queue->pdu) {
		ret = -ENOMEM;
		goto err_crypto;
	}

	FUNC3(nctrl->device, "connecting queue %d\n",
			FUNC17(queue));

	ret = FUNC6(queue->sock, (struct sockaddr *)&ctrl->addr,
		sizeof(ctrl->addr), 0);
	if (ret) {
		FUNC4(nctrl->device,
			"failed to connect socket: %d\n", ret);
		goto err_rcv_pdu;
	}

	ret = FUNC15(queue);
	if (ret)
		goto err_init_connect;

	queue->rd_enabled = true;
	FUNC18(NVME_TCP_Q_ALLOCATED, &queue->flags);
	FUNC16(queue);

	FUNC24(&queue->sock->sk->sk_callback_lock);
	queue->sock->sk->sk_user_data = queue;
	queue->state_change = queue->sock->sk->sk_state_change;
	queue->data_ready = queue->sock->sk->sk_data_ready;
	queue->write_space = queue->sock->sk->sk_write_space;
	queue->sock->sk->sk_data_ready = nvme_tcp_data_ready;
	queue->sock->sk->sk_state_change = nvme_tcp_state_change;
	queue->sock->sk->sk_write_space = nvme_tcp_write_space;
#ifdef CONFIG_NET_RX_BUSY_POLL
	queue->sock->sk->sk_ll_usec = 1;
#endif
	FUNC25(&queue->sock->sk->sk_callback_lock);

	return 0;

err_init_connect:
	FUNC8(queue->sock, SHUT_RDWR);
err_rcv_pdu:
	FUNC9(queue->pdu);
err_crypto:
	if (queue->hdr_digest || queue->data_digest)
		FUNC13(queue);
err_sock:
	FUNC21(queue->sock);
	queue->sock = NULL;
	return ret;
}