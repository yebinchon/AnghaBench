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
struct cpl_peer_close {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpl_peer_close*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct cxgb4_lld_info* FUNC2 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 struct cxgbi_sock* FUNC4 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_peer_close *req = (struct cpl_peer_close *)skb->data;
	unsigned int tid = FUNC0(req);
	struct cxgb4_lld_info *lldi = FUNC2(cdev);
	struct tid_info *t = lldi->tids;

	csk = FUNC4(t, tid);
	if (FUNC7(!csk)) {
		FUNC5("can't find connection for tid %u.\n", tid);
		goto rel_skb;
	}
	FUNC6("csk 0x%p,%u,0x%lx,%u.\n",
		       (&csk->saddr), (&csk->daddr),
		       csk, csk->state, csk->flags, csk->tid);
	FUNC3(csk);
rel_skb:
	FUNC1(skb);
}