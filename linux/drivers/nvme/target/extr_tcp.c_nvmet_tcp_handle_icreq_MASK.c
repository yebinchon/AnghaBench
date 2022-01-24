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
struct TYPE_6__ {int hlen; void* plen; scalar_t__ pdo; int /*<<< orphan*/  type; } ;
struct nvme_tcp_icresp_pdu {int digest; scalar_t__ cpda; void* maxdata; int /*<<< orphan*/  pfv; TYPE_3__ hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  plen; } ;
struct nvme_tcp_icreq_pdu {scalar_t__ pfv; scalar_t__ hpda; int digest; TYPE_2__ hdr; } ;
struct TYPE_4__ {struct nvme_tcp_icresp_pdu icresp; struct nvme_tcp_icreq_pdu icreq; } ;
struct nvmet_tcp_queue {int hdr_digest; int data_digest; int /*<<< orphan*/  state; int /*<<< orphan*/  sock; int /*<<< orphan*/  idx; TYPE_1__ pdu; } ;
struct msghdr {int dummy; } ;
struct kvec {int iov_len; struct nvme_tcp_icresp_pdu* iov_base; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  NVMET_TCP_Q_LIVE ; 
 int NVME_TCP_DATA_DIGEST_ENABLE ; 
 int NVME_TCP_HDR_DIGEST_ENABLE ; 
 scalar_t__ NVME_TCP_PFV_1_0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_tcp_icresp_pdu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_tcp_icresp ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_tcp_queue*) ; 
 int FUNC6 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 

__attribute__((used)) static int FUNC10(struct nvmet_tcp_queue *queue)
{
	struct nvme_tcp_icreq_pdu *icreq = &queue->pdu.icreq;
	struct nvme_tcp_icresp_pdu *icresp = &queue->pdu.icresp;
	struct msghdr msg = {};
	struct kvec iov;
	int ret;

	if (FUNC3(icreq->hdr.plen) != sizeof(struct nvme_tcp_icreq_pdu)) {
		FUNC9("bad nvme-tcp pdu length (%d)\n",
			FUNC3(icreq->hdr.plen));
		FUNC7(queue);
	}

	if (icreq->pfv != NVME_TCP_PFV_1_0) {
		FUNC9("queue %d: bad pfv %d\n", queue->idx, icreq->pfv);
		return -EPROTO;
	}

	if (icreq->hpda != 0) {
		FUNC9("queue %d: unsupported hpda %d\n", queue->idx,
			icreq->hpda);
		return -EPROTO;
	}

	queue->hdr_digest = !!(icreq->digest & NVME_TCP_HDR_DIGEST_ENABLE);
	queue->data_digest = !!(icreq->digest & NVME_TCP_DATA_DIGEST_ENABLE);
	if (queue->hdr_digest || queue->data_digest) {
		ret = FUNC6(queue);
		if (ret)
			return ret;
	}

	FUNC4(icresp, 0, sizeof(*icresp));
	icresp->hdr.type = nvme_tcp_icresp;
	icresp->hdr.hlen = sizeof(*icresp);
	icresp->hdr.pdo = 0;
	icresp->hdr.plen = FUNC1(icresp->hdr.hlen);
	icresp->pfv = FUNC0(NVME_TCP_PFV_1_0);
	icresp->maxdata = FUNC1(0xffff); /* FIXME: support r2t */
	icresp->cpda = 0;
	if (queue->hdr_digest)
		icresp->digest |= NVME_TCP_HDR_DIGEST_ENABLE;
	if (queue->data_digest)
		icresp->digest |= NVME_TCP_DATA_DIGEST_ENABLE;

	iov.iov_base = icresp;
	iov.iov_len = sizeof(*icresp);
	ret = FUNC2(queue->sock, &msg, &iov, 1, iov.iov_len);
	if (ret < 0)
		goto free_crypto;

	queue->state = NVMET_TCP_Q_LIVE;
	FUNC5(queue);
	return 0;
free_crypto:
	if (queue->hdr_digest || queue->data_digest)
		FUNC8(queue);
	return ret;
}