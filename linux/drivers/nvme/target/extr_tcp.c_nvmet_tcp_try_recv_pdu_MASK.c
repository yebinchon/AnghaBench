#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct nvme_tcp_hdr {scalar_t__ hlen; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {struct nvme_tcp_hdr hdr; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct nvmet_tcp_queue {int offset; scalar_t__ left; TYPE_2__ pdu; scalar_t__ data_digest; scalar_t__ hdr_digest; int /*<<< orphan*/  sock; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;
struct kvec {scalar_t__ iov_len; void* iov_base; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int EPROTO ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nvmet_tcp_queue*,TYPE_2__*) ; 
 int FUNC2 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_tcp_queue*) ; 
 scalar_t__ FUNC4 (struct nvmet_tcp_queue*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nvmet_tcp_queue*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct nvmet_tcp_queue *queue)
{
	struct nvme_tcp_hdr *hdr = &queue->pdu.cmd.hdr;
	int len;
	struct kvec iov;
	struct msghdr msg = { .msg_flags = MSG_DONTWAIT };

recv:
	iov.iov_base = (void *)&queue->pdu + queue->offset;
	iov.iov_len = queue->left;
	len = FUNC0(queue->sock, &msg, &iov, 1,
			iov.iov_len, msg.msg_flags);
	if (FUNC9(len < 0))
		return len;

	queue->offset += len;
	queue->left -= len;
	if (queue->left)
		return -EAGAIN;

	if (queue->offset == sizeof(struct nvme_tcp_hdr)) {
		u8 hdgst = FUNC4(queue);

		if (FUNC9(!FUNC6(hdr->type))) {
			FUNC8("unexpected pdu type %d\n", hdr->type);
			FUNC3(queue);
			return -EIO;
		}

		if (FUNC9(hdr->hlen != FUNC5(hdr->type))) {
			FUNC8("pdu %d bad hlen %d\n", hdr->type, hdr->hlen);
			return -EIO;
		}

		queue->left = hdr->hlen - queue->offset + hdgst;
		goto recv;
	}

	if (queue->hdr_digest &&
	    FUNC7(queue, &queue->pdu, queue->offset)) {
		FUNC3(queue); /* fatal */
		return -EPROTO;
	}

	if (queue->data_digest &&
	    FUNC1(queue, &queue->pdu)) {
		FUNC3(queue); /* fatal */
		return -EPROTO;
	}

	return FUNC2(queue);
}