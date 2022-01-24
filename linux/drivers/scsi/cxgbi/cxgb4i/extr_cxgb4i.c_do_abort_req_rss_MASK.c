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
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  err; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_abort_req_rss {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CPL_ABORT_NO_RST ; 
 int /*<<< orphan*/  CTPF_ABORT_REQ_RCVD ; 
 int /*<<< orphan*/  CTPF_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  CTPF_TX_DATA_SENT ; 
 int /*<<< orphan*/  CTP_ABORTING ; 
 unsigned int FUNC0 (struct cpl_abort_req_rss*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ,int*) ; 
 struct cxgb4_lld_info* FUNC3 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct cxgbi_sock* FUNC12 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cxgbi_sock*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_abort_req_rss *req = (struct cpl_abort_req_rss *)skb->data;
	unsigned int tid = FUNC0(req);
	struct cxgb4_lld_info *lldi = FUNC3(cdev);
	struct tid_info *t = lldi->tids;
	int rst_status = CPL_ABORT_NO_RST;

	csk = FUNC12(t, tid);
	if (FUNC19(!csk)) {
		FUNC13("can't find connection for tid %u.\n", tid);
		goto rel_skb;
	}

	FUNC14("csk 0x%p,%u,0x%lx,%u, status %u.\n",
		       (&csk->saddr), (&csk->daddr),
		       csk, csk->state, csk->flags, csk->tid, req->status);

	if (FUNC11(req->status))
		goto rel_skb;

	FUNC7(csk);
	FUNC17(&csk->lock);

	FUNC4(csk, CTPF_ABORT_REQ_RCVD);

	if (!FUNC6(csk, CTPF_TX_DATA_SENT)) {
		FUNC16(csk);
		FUNC9(csk, CTPF_TX_DATA_SENT);
	}

	FUNC9(csk, CTPF_ABORT_REQ_RCVD);
	FUNC10(csk, CTP_ABORTING);

	FUNC15(csk, rst_status);

	if (!FUNC6(csk, CTPF_ABORT_RPL_PENDING)) {
		csk->err = FUNC2(csk, req->status, &rst_status);
		FUNC5(csk);
	}

	FUNC18(&csk->lock);
	FUNC8(csk);
rel_skb:
	FUNC1(skb);
}