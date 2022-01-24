#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct request {scalar_t__ bio; } ;
struct nvme_tcp_request {scalar_t__ pdu_len; scalar_t__ data_len; scalar_t__ curr_bio; scalar_t__ pdu_sent; scalar_t__ data_sent; scalar_t__ offset; int /*<<< orphan*/  state; struct nvme_tcp_queue* queue; struct nvme_tcp_cmd_pdu* pdu; } ;
struct nvme_tcp_queue {TYPE_3__* ctrl; scalar_t__ data_digest; scalar_t__ hdr_digest; } ;
struct TYPE_4__ {int hlen; scalar_t__ pdo; int /*<<< orphan*/  plen; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct nvme_tcp_cmd_pdu {TYPE_1__ hdr; int /*<<< orphan*/  cmd; } ;
struct nvme_ns {int dummy; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_2__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_TCP_F_DDGST ; 
 int /*<<< orphan*/  NVME_TCP_F_HDGST ; 
 int /*<<< orphan*/  NVME_TCP_SEND_CMD_PDU ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ WRITE ; 
 struct nvme_tcp_request* FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct nvme_ns*,struct request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_tcp_cmd ; 
 scalar_t__ FUNC6 (struct nvme_tcp_queue*) ; 
 scalar_t__ FUNC7 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_tcp_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct nvme_tcp_queue*) ; 
 scalar_t__ FUNC10 (struct nvme_tcp_queue*,struct request*) ; 
 scalar_t__ FUNC11 (struct request*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static blk_status_t FUNC13(struct nvme_ns *ns,
		struct request *rq)
{
	struct nvme_tcp_request *req = FUNC0(rq);
	struct nvme_tcp_cmd_pdu *pdu = req->pdu;
	struct nvme_tcp_queue *queue = req->queue;
	u8 hdgst = FUNC7(queue), ddgst = 0;
	blk_status_t ret;

	ret = FUNC5(ns, rq, &pdu->cmd);
	if (ret)
		return ret;

	req->state = NVME_TCP_SEND_CMD_PDU;
	req->offset = 0;
	req->data_sent = 0;
	req->pdu_len = 0;
	req->pdu_sent = 0;
	req->data_len = FUNC1(rq);
	req->curr_bio = rq->bio;

	if (FUNC11(rq) == WRITE &&
	    req->data_len <= FUNC9(queue))
		req->pdu_len = req->data_len;
	else if (req->curr_bio)
		FUNC8(req, READ);

	pdu->hdr.type = nvme_tcp_cmd;
	pdu->hdr.flags = 0;
	if (queue->hdr_digest)
		pdu->hdr.flags |= NVME_TCP_F_HDGST;
	if (queue->data_digest && req->pdu_len) {
		pdu->hdr.flags |= NVME_TCP_F_DDGST;
		ddgst = FUNC6(queue);
	}
	pdu->hdr.hlen = sizeof(*pdu);
	pdu->hdr.pdo = req->pdu_len ? pdu->hdr.hlen + hdgst : 0;
	pdu->hdr.plen =
		FUNC2(pdu->hdr.hlen + hdgst + req->pdu_len + ddgst);

	ret = FUNC10(queue, rq);
	if (FUNC12(ret)) {
		FUNC4(rq);
		FUNC3(queue->ctrl->ctrl.device,
			"Failed to map data (%d)\n", ret);
		return ret;
	}

	return 0;
}