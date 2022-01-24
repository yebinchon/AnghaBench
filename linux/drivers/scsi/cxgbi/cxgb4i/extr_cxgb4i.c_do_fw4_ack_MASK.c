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
struct cxgbi_sock {int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_fw4_ack {int /*<<< orphan*/  seq_vld; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  credits; } ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 unsigned int FUNC0 (struct cpl_fw4_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct cxgb4_lld_info* FUNC2 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cxgbi_sock* FUNC5 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_fw4_ack *rpl = (struct cpl_fw4_ack *)skb->data;
	unsigned int tid = FUNC0(rpl);
	struct cxgb4_lld_info *lldi = FUNC2(cdev);
	struct tid_info *t = lldi->tids;

	csk = FUNC5(t, tid);
	if (FUNC8(!csk))
		FUNC7("can't find connection for tid %u.\n", tid);
	else {
		FUNC4(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
			"csk 0x%p,%u,0x%lx,%u.\n",
			csk, csk->state, csk->flags, csk->tid);
		FUNC3(csk, rpl->credits, FUNC6(rpl->snd_una),
					rpl->seq_vld);
	}
	FUNC1(skb);
}