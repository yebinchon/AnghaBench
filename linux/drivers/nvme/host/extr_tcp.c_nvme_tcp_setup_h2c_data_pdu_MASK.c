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
struct request {int /*<<< orphan*/  tag; } ;
struct nvme_tcp_request {scalar_t__ pdu_len; scalar_t__ data_sent; scalar_t__ data_len; scalar_t__ pdu_sent; struct nvme_tcp_queue* queue; struct nvme_tcp_data_pdu* pdu; } ;
struct nvme_tcp_r2t_pdu {int /*<<< orphan*/  ttag; int /*<<< orphan*/  r2t_offset; int /*<<< orphan*/  r2t_length; } ;
struct nvme_tcp_queue {scalar_t__ data_digest; scalar_t__ hdr_digest; TYPE_2__* ctrl; } ;
struct TYPE_6__ {int hlen; void* plen; scalar_t__ pdo; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct nvme_tcp_data_pdu {void* data_length; void* data_offset; int /*<<< orphan*/  command_id; int /*<<< orphan*/  ttag; TYPE_3__ hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  NVME_TCP_F_DATA_LAST ; 
 int /*<<< orphan*/  NVME_TCP_F_DDGST ; 
 int /*<<< orphan*/  NVME_TCP_F_HDGST ; 
 struct request* FUNC0 (struct nvme_tcp_request*) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_tcp_data_pdu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  nvme_tcp_h2c_data ; 
 scalar_t__ FUNC6 (struct nvme_tcp_queue*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nvme_tcp_request *req,
		struct nvme_tcp_r2t_pdu *pdu)
{
	struct nvme_tcp_data_pdu *data = req->pdu;
	struct nvme_tcp_queue *queue = req->queue;
	struct request *rq = FUNC0(req);
	u8 hdgst = FUNC6(queue);
	u8 ddgst = FUNC5(queue);

	req->pdu_len = FUNC3(pdu->r2t_length);
	req->pdu_sent = 0;

	if (FUNC7(req->data_sent + req->pdu_len > req->data_len)) {
		FUNC2(queue->ctrl->ctrl.device,
			"req %d r2t len %u exceeded data len %u (%zu sent)\n",
			rq->tag, req->pdu_len, req->data_len,
			req->data_sent);
		return -EPROTO;
	}

	if (FUNC7(FUNC3(pdu->r2t_offset) < req->data_sent)) {
		FUNC2(queue->ctrl->ctrl.device,
			"req %d unexpected r2t offset %u (expected %zu)\n",
			rq->tag, FUNC3(pdu->r2t_offset),
			req->data_sent);
		return -EPROTO;
	}

	FUNC4(data, 0, sizeof(*data));
	data->hdr.type = nvme_tcp_h2c_data;
	data->hdr.flags = NVME_TCP_F_DATA_LAST;
	if (queue->hdr_digest)
		data->hdr.flags |= NVME_TCP_F_HDGST;
	if (queue->data_digest)
		data->hdr.flags |= NVME_TCP_F_DDGST;
	data->hdr.hlen = sizeof(*data);
	data->hdr.pdo = data->hdr.hlen + hdgst;
	data->hdr.plen =
		FUNC1(data->hdr.hlen + hdgst + req->pdu_len + ddgst);
	data->ttag = pdu->ttag;
	data->command_id = rq->tag;
	data->data_offset = FUNC1(req->data_sent);
	data->data_length = FUNC1(req->pdu_len);
	return 0;
}