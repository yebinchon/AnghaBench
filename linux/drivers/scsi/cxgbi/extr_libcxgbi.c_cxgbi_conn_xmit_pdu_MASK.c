#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct iscsi_tcp_conn {struct cxgbi_conn* dd_data; } ;
struct iscsi_task {TYPE_3__* conn; struct iscsi_task* itt; int /*<<< orphan*/  sc; int /*<<< orphan*/  hdr; } ;
struct cxgbi_task_tag_info {int flags; } ;
struct cxgbi_task_data {struct sk_buff* skb; struct cxgbi_task_tag_info ttinfo; } ;
struct cxgbi_sock {TYPE_2__* cdev; } ;
struct cxgbi_ppm {int dummy; } ;
struct cxgbi_conn {TYPE_1__* cep; } ;
struct TYPE_7__ {int txdata_octets; scalar_t__ datadgst_en; scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct TYPE_6__ {scalar_t__ (* csk_ddp_set_map ) (struct cxgbi_ppm*,struct cxgbi_sock*,struct cxgbi_task_tag_info*) ;struct cxgbi_ppm* (* cdev2ppm ) (TYPE_2__*) ;} ;
struct TYPE_5__ {struct cxgbi_sock* csk; } ;

/* Variables and functions */
 int CXGBI_DBG_ISCSI ; 
 int CXGBI_DBG_PDU_TX ; 
 int CXGBI_PPOD_INFO_FLAG_VALID ; 
 int EAGAIN ; 
 int ENOBUFS ; 
 int EPIPE ; 
 scalar_t__ ISCSI_DIGEST_SIZE ; 
 int /*<<< orphan*/  ISCSI_ERR_XMIT_FAILED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  SKB_TX_ISCSI_PDU_HEADER_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct cxgbi_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,char*,int) ; 
 struct cxgbi_task_data* FUNC4 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct iscsi_task*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct iscsi_task*) ; 
 struct cxgbi_ppm* FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (struct cxgbi_ppm*,struct cxgbi_sock*,struct cxgbi_task_tag_info*) ; 

int FUNC10(struct iscsi_task *task)
{
	struct iscsi_tcp_conn *tcp_conn = task->conn->dd_data;
	struct cxgbi_conn *cconn = tcp_conn->dd_data;
	struct cxgbi_task_data *tdata = FUNC4(task);
	struct cxgbi_task_tag_info *ttinfo = &tdata->ttinfo;
	struct sk_buff *skb = tdata->skb;
	struct cxgbi_sock *csk = NULL;
	unsigned int datalen;
	int err;

	if (!skb) {
		FUNC5(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
			"task 0x%p\n", task);
		return 0;
	}

	if (cconn && cconn->cep)
		csk = cconn->cep->csk;
	if (!csk) {
		FUNC5(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
			  "task 0x%p, csk gone.\n", task);
		return -EPIPE;
	}

	tdata->skb = NULL;
	datalen = skb->data_len;

	/* write ppod first if using ofldq to write ppod */
	if (ttinfo->flags & CXGBI_PPOD_INFO_FLAG_VALID) {
		struct cxgbi_ppm *ppm = csk->cdev->cdev2ppm(csk->cdev);

		ttinfo->flags &= ~CXGBI_PPOD_INFO_FLAG_VALID;
		if (csk->cdev->csk_ddp_set_map(ppm, csk, ttinfo) < 0)
			FUNC7("task 0x%p, ppod writing using ofldq failed.\n",
			       task);
			/* continue. Let fl get the data */
	}

	if (!task->sc)
		FUNC6(skb->data, task->hdr, SKB_TX_ISCSI_PDU_HEADER_MAX);

	err = FUNC1(cconn->cep->csk, skb);
	if (err > 0) {
		int pdulen = err;

		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"task 0x%p,0x%p, skb 0x%p, len %u/%u, rv %d.\n",
			task, task->sc, skb, skb->len, skb->data_len, err);

		if (task->conn->hdrdgst_en)
			pdulen += ISCSI_DIGEST_SIZE;

		if (datalen && task->conn->datadgst_en)
			pdulen += ISCSI_DIGEST_SIZE;

		task->conn->txdata_octets += pdulen;
		return 0;
	}

	if (err == -EAGAIN || err == -ENOBUFS) {
		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"task 0x%p, skb 0x%p, len %u/%u, %d EAGAIN.\n",
			task, skb, skb->len, skb->data_len, err);
		/* reset skb to send when we are called again */
		tdata->skb = skb;
		return err;
	}

	FUNC5(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
		"itt 0x%x, skb 0x%p, len %u/%u, xmit err %d.\n",
		task->itt, skb, skb->len, skb->data_len, err);

	FUNC0(skb);

	FUNC3(KERN_ERR, task->conn, "xmit err %d.\n", err);
	FUNC2(task->conn, ISCSI_ERR_XMIT_FAILED);
	return err;
}