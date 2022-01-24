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
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  l2t; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cpl_act_open_req {int dummy; } ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  act_open_arp_failure ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cxgbi_sock* csk ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 struct cxgbi_sock* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  retry_timer ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct cxgbi_sock *csk = FUNC4(csk, t, retry_timer);
	struct sk_buff *skb;

	FUNC5(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u.\n",
		csk, csk->state, csk->flags, csk->tid);

	FUNC2(csk);
	FUNC8(&csk->lock);
	skb = FUNC0(sizeof(struct cpl_act_open_req), 0, GFP_ATOMIC);
	if (!skb)
		FUNC1(csk, -ENOMEM);
	else {
		skb->sk = (struct sock *)csk;
		FUNC7(skb, act_open_arp_failure);
		FUNC6(csk, skb, csk->l2t);
	}
	FUNC9(&csk->lock);
	FUNC3(csk);
}