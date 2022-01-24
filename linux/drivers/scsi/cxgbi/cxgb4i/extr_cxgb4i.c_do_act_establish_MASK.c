#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * function; } ;
struct cxgbi_sock {unsigned int atid; scalar_t__ state; unsigned int tid; int rcv_win; int advmss; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  rcv_wup; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  copied_seq; TYPE_1__ retry_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  csk_family; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct cxgbi_device {int /*<<< orphan*/  owner; } ;
struct cxgb4_lld_info {int* mtus; struct tid_info* tids; } ;
struct cpl_act_establish {int /*<<< orphan*/  tcp_opt; int /*<<< orphan*/  snd_isn; int /*<<< orphan*/  rcv_isn; int /*<<< orphan*/  tos_atid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ACTIVE_CLOSE_NEEDED ; 
 int /*<<< orphan*/  CTPF_HAS_TID ; 
 scalar_t__ CTP_ACTIVE_OPEN ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 unsigned int FUNC0 (struct cpl_act_establish*) ; 
 int RCV_BUFSIZ_MASK ; 
 size_t FUNC1 (unsigned short) ; 
 scalar_t__ FUNC2 (unsigned short) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tid_info*,struct cxgbi_sock*,unsigned int,int /*<<< orphan*/ ) ; 
 struct cxgb4_lld_info* FUNC7 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC10 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,struct cxgbi_sock*,size_t,int) ; 
 struct cxgbi_sock* FUNC16 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int) ; 

__attribute__((used)) static void FUNC29(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_act_establish *req = (struct cpl_act_establish *)skb->data;
	unsigned short tcp_opt = FUNC19(req->tcp_opt);
	unsigned int tid = FUNC0(req);
	unsigned int atid = FUNC3(FUNC18(req->tos_atid));
	struct cxgb4_lld_info *lldi = FUNC7(cdev);
	struct tid_info *t = lldi->tids;
	u32 rcv_isn = FUNC5(req->rcv_isn);

	csk = FUNC16(t, atid);
	if (FUNC28(!csk)) {
		FUNC20("NO conn. for atid %u, cdev 0x%p.\n", atid, cdev);
		goto rel_skb;
	}

	if (csk->atid != atid) {
		FUNC20("bad conn atid %u, csk 0x%p,%u,0x%lx,tid %u, atid %u.\n",
			atid, csk, csk->state, csk->flags, csk->tid, csk->atid);
		goto rel_skb;
	}

	FUNC22("atid 0x%x, tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\n",
		       (&csk->saddr), (&csk->daddr),
		       atid, tid, csk, csk->state, csk->flags, rcv_isn);

	FUNC17(cdev->owner);

	FUNC11(csk);
	csk->tid = tid;
	FUNC6(lldi->tids, csk, tid, csk->csk_family);
	FUNC12(csk, CTPF_HAS_TID);

	FUNC14(csk);

	FUNC26(&csk->lock);
	if (FUNC28(csk->state != CTP_ACTIVE_OPEN))
		FUNC21("csk 0x%p,%u,0x%lx,%u, got EST.\n",
			csk, csk->state, csk->flags, csk->tid);

	if (csk->retry_timer.function) {
		FUNC13(&csk->retry_timer);
		csk->retry_timer.function = NULL;
	}

	csk->copied_seq = csk->rcv_wup = csk->rcv_nxt = rcv_isn;
	/*
	 * Causes the first RX_DATA_ACK to supply any Rx credits we couldn't
	 * pass through opt0.
	 */
	if (csk->rcv_win > (RCV_BUFSIZ_MASK << 10))
		csk->rcv_wup -= csk->rcv_win - (RCV_BUFSIZ_MASK << 10);

	csk->advmss = lldi->mtus[FUNC1(tcp_opt)] - 40;
	if (FUNC2(tcp_opt))
		csk->advmss -= 12;
	if (csk->advmss < 128)
		csk->advmss = 128;

	FUNC15(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p, mss_idx %u, advmss %u.\n",
			csk, FUNC1(tcp_opt), csk->advmss);

	FUNC9(csk, FUNC18(req->snd_isn), FUNC19(req->tcp_opt));

	if (FUNC28(FUNC10(csk, CTPF_ACTIVE_CLOSE_NEEDED)))
		FUNC24(csk);
	else {
		if (FUNC25(&csk->write_queue))
			FUNC23(csk, 0);
		FUNC8(csk);
	}
	FUNC27(&csk->lock);

rel_skb:
	FUNC4(skb);
}