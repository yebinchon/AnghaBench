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
struct cxgbi_sock {int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_abort_rpl_rss {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_ABORT_FAILED ; 
 unsigned int FUNC0 (struct cpl_abort_rpl_rss*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct cxgb4_lld_info* FUNC2 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 struct cxgbi_sock* FUNC4 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_abort_rpl_rss *rpl = (struct cpl_abort_rpl_rss *)skb->data;
	unsigned int tid = FUNC0(rpl);
	struct cxgb4_lld_info *lldi = FUNC2(cdev);
	struct tid_info *t = lldi->tids;

	csk = FUNC4(t, tid);
	if (!csk)
		goto rel_skb;

	if (csk)
		FUNC5("csk 0x%p,%u,0x%lx,%u, status %u.\n",
			       (&csk->saddr), (&csk->daddr), csk,
			       csk->state, csk->flags, csk->tid, rpl->status);

	if (rpl->status == CPL_ERR_ABORT_FAILED)
		goto rel_skb;

	FUNC3(csk);
rel_skb:
	FUNC1(skb);
}