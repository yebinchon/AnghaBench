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
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ function; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; TYPE_1__ retry_timer; int /*<<< orphan*/  csk_family; int /*<<< orphan*/  port_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct cxgbi_device {int /*<<< orphan*/  owner; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_act_open_rpl {int /*<<< orphan*/  atid_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int CPL_ERR_ARP_MISS ; 
 unsigned int CPL_ERR_CONN_EXIST ; 
 unsigned int CPL_ERR_TCAM_FULL ; 
 unsigned int FUNC2 (struct cpl_act_open_rpl*) ; 
 int HZ ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ csk_act_open_retry_timer ; 
 int /*<<< orphan*/  FUNC7 (struct tid_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct cxgb4_lld_info* FUNC8 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 scalar_t__ jiffies ; 
 struct cxgbi_sock* FUNC13 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_act_open_rpl *rpl = (struct cpl_act_open_rpl *)skb->data;
	unsigned int tid = FUNC2(rpl);
	unsigned int atid =
		FUNC3(FUNC0(FUNC6(rpl->atid_status)));
	unsigned int status = FUNC1(FUNC6(rpl->atid_status));
	struct cxgb4_lld_info *lldi = FUNC8(cdev);
	struct tid_info *t = lldi->tids;

	csk = FUNC13(t, atid);
	if (FUNC20(!csk)) {
		FUNC16("NO matching conn. atid %u, tid %u.\n", atid, tid);
		goto rel_skb;
	}

	FUNC17("tid %u/%u, status %u.\n"
		       "csk 0x%p,%u,0x%lx. ", (&csk->saddr), (&csk->daddr),
		       atid, tid, status, csk, csk->state, csk->flags);

	if (FUNC12(status))
		goto rel_skb;

	FUNC15(cdev->owner);

	if (status && status != CPL_ERR_TCAM_FULL &&
	    status != CPL_ERR_CONN_EXIST &&
	    status != CPL_ERR_ARP_MISS)
		FUNC7(lldi->tids, csk->port_id, FUNC2(rpl),
				 csk->csk_family);

	FUNC10(csk);
	FUNC18(&csk->lock);

	if (status == CPL_ERR_CONN_EXIST &&
	    csk->retry_timer.function != csk_act_open_retry_timer) {
		csk->retry_timer.function = csk_act_open_retry_timer;
		FUNC14(&csk->retry_timer, jiffies + HZ / 2);
	} else
		FUNC9(csk,
					FUNC5(status));

	FUNC19(&csk->lock);
	FUNC11(csk);
rel_skb:
	FUNC4(skb);
}