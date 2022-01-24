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
struct cxgbi_sock {int /*<<< orphan*/  cmpl; int /*<<< orphan*/  err; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_set_tcb_rpl {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_NONE ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  EINVAL ; 
 unsigned int FUNC0 (struct cpl_set_tcb_rpl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cxgb4_lld_info* FUNC3 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct cxgbi_sock* FUNC5 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cpl_set_tcb_rpl *rpl = (struct cpl_set_tcb_rpl *)skb->data;
	unsigned int tid = FUNC0(rpl);
	struct cxgb4_lld_info *lldi = FUNC3(cdev);
	struct tid_info *t = lldi->tids;
	struct cxgbi_sock *csk;

	csk = FUNC5(t, tid);
	if (!csk) {
		FUNC6("can't find conn. for tid %u.\n", tid);
		return;
	}

	FUNC4(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,%lx,%u, status 0x%x.\n",
		csk, csk->state, csk->flags, csk->tid, rpl->status);

	if (rpl->status != CPL_ERR_NONE) {
		FUNC6("csk 0x%p,%u, SET_TCB_RPL status %u.\n",
			csk, tid, rpl->status);
		csk->err = -EINVAL;
	}

	FUNC2(&csk->cmpl);

	FUNC1(skb);
}