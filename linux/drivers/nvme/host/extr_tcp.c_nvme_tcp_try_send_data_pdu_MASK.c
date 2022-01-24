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
typedef  int u8 ;
struct nvme_tcp_request {int offset; int /*<<< orphan*/  data_sent; int /*<<< orphan*/  state; struct nvme_tcp_data_pdu* pdu; struct nvme_tcp_queue* queue; } ;
struct nvme_tcp_queue {int /*<<< orphan*/  snd_hash; scalar_t__ data_digest; int /*<<< orphan*/  sock; scalar_t__ hdr_digest; } ;
struct nvme_tcp_data_pdu {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_MORE ; 
 int /*<<< orphan*/  NVME_TCP_SEND_DATA ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nvme_tcp_data_pdu*,int) ; 
 int FUNC3 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_tcp_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nvme_tcp_data_pdu*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_tcp_data_pdu*) ; 

__attribute__((used)) static int FUNC8(struct nvme_tcp_request *req)
{
	struct nvme_tcp_queue *queue = req->queue;
	struct nvme_tcp_data_pdu *pdu = req->pdu;
	u8 hdgst = FUNC3(queue);
	int len = sizeof(*pdu) - req->offset + hdgst;
	int ret;

	if (queue->hdr_digest && !req->offset)
		FUNC2(queue->snd_hash, pdu, sizeof(*pdu));

	ret = FUNC1(queue->sock, FUNC7(pdu),
			FUNC5(pdu) + req->offset, len,
			MSG_DONTWAIT | MSG_MORE);
	if (FUNC6(ret <= 0))
		return ret;

	len -= ret;
	if (!len) {
		req->state = NVME_TCP_SEND_DATA;
		if (queue->data_digest)
			FUNC0(queue->snd_hash);
		if (!req->data_sent)
			FUNC4(req, WRITE);
		return 1;
	}
	req->offset += ret;

	return -EAGAIN;
}