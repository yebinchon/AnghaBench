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
struct page {int dummy; } ;
struct nvme_tcp_request {scalar_t__ offset; int /*<<< orphan*/  state; int /*<<< orphan*/  ddgst; struct nvme_tcp_queue* queue; } ;
struct nvme_tcp_queue {int /*<<< orphan*/  snd_hash; scalar_t__ data_digest; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int MSG_MORE ; 
 int /*<<< orphan*/  NVME_TCP_SEND_DDGST ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct page*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_tcp_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_tcp_queue*) ; 
 int FUNC6 (struct nvme_tcp_request*,size_t) ; 
 size_t FUNC7 (struct nvme_tcp_request*) ; 
 size_t FUNC8 (struct nvme_tcp_request*) ; 
 struct page* FUNC9 (struct nvme_tcp_request*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct page*,size_t,size_t,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct nvme_tcp_request *req)
{
	struct nvme_tcp_queue *queue = req->queue;

	while (true) {
		struct page *page = FUNC9(req);
		size_t offset = FUNC8(req);
		size_t len = FUNC7(req);
		bool last = FUNC6(req, len);
		int ret, flags = MSG_DONTWAIT;

		if (last && !queue->data_digest)
			flags |= MSG_EOR;
		else
			flags |= MSG_MORE;

		/* can't zcopy slab pages */
		if (FUNC11(FUNC0(page))) {
			ret = FUNC10(queue->sock, page, offset, len,
					flags);
		} else {
			ret = FUNC1(queue->sock, page, offset, len,
					flags);
		}
		if (ret <= 0)
			return ret;

		FUNC2(req, ret);
		if (queue->data_digest)
			FUNC4(queue->snd_hash, page,
					offset, ret);

		/* fully successful last write*/
		if (last && ret == len) {
			if (queue->data_digest) {
				FUNC3(queue->snd_hash,
					&req->ddgst);
				req->state = NVME_TCP_SEND_DDGST;
				req->offset = 0;
			} else {
				FUNC5(queue);
			}
			return 1;
		}
	}
	return -EAGAIN;
}