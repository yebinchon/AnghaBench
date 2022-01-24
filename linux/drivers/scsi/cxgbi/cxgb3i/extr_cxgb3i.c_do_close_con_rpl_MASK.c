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
struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cpl_close_con_rpl {int /*<<< orphan*/  snd_nxt; } ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct cpl_close_con_rpl* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct t3cdev *cdev, struct sk_buff *skb,
			    void *ctx)
{
	struct cxgbi_sock *csk = ctx;
	struct cpl_close_con_rpl *rpl = FUNC1(skb);

	FUNC3(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u, snxt %u.\n",
		csk, csk->state, csk->flags, csk->tid, FUNC4(rpl->snd_nxt));

	FUNC2(csk, FUNC4(rpl->snd_nxt));
	FUNC0(skb);
	return 0;
}