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
struct nvme_tcp_request {int offset; int /*<<< orphan*/  state; struct nvme_tcp_cmd_pdu* pdu; struct nvme_tcp_queue* queue; } ;
struct nvme_tcp_queue {int /*<<< orphan*/  snd_hash; scalar_t__ data_digest; int /*<<< orphan*/  sock; scalar_t__ hdr_digest; } ;
struct nvme_tcp_cmd_pdu {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_MORE ; 
 int /*<<< orphan*/  NVME_TCP_SEND_DATA ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_tcp_queue*) ; 
 int FUNC3 (struct nvme_tcp_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nvme_tcp_cmd_pdu*,int) ; 
 int FUNC5 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_tcp_request*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvme_tcp_cmd_pdu*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_tcp_cmd_pdu*) ; 

__attribute__((used)) static int FUNC10(struct nvme_tcp_request *req)
{
	struct nvme_tcp_queue *queue = req->queue;
	struct nvme_tcp_cmd_pdu *pdu = req->pdu;
	bool inline_data = FUNC3(req);
	int flags = MSG_DONTWAIT | (inline_data ? MSG_MORE : MSG_EOR);
	u8 hdgst = FUNC5(queue);
	int len = sizeof(*pdu) + hdgst - req->offset;
	int ret;

	if (queue->hdr_digest && !req->offset)
		FUNC4(queue->snd_hash, pdu, sizeof(*pdu));

	ret = FUNC1(queue->sock, FUNC9(pdu),
			FUNC7(pdu) + req->offset, len,  flags);
	if (FUNC8(ret <= 0))
		return ret;

	len -= ret;
	if (!len) {
		if (inline_data) {
			req->state = NVME_TCP_SEND_DATA;
			if (queue->data_digest)
				FUNC0(queue->snd_hash);
			FUNC6(req, WRITE);
		} else {
			FUNC2(queue);
		}
		return 1;
	}
	req->offset += ret;

	return -EAGAIN;
}