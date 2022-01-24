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
typedef  scalar_t__ u32 ;
struct cxgbi_sock {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; scalar_t__ snd_una; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ABORT_RPL_PENDING ; 
#define  CTP_ABORTING 131 
#define  CTP_ACTIVE_CLOSE 130 
#define  CTP_CLOSE_WAIT_1 129 
#define  CTP_CLOSE_WAIT_2 128 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct cxgbi_sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct cxgbi_sock *csk, u32 snd_nxt)
{
	FUNC5(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
		csk, (csk)->state, (csk)->flags, (csk)->tid);
	FUNC2(csk);
	FUNC7(&csk->lock);

	csk->snd_una = snd_nxt - 1;
	if (FUNC1(csk, CTPF_ABORT_RPL_PENDING))
		goto done;

	switch (csk->state) {
	case CTP_ACTIVE_CLOSE:
		FUNC4(csk, CTP_CLOSE_WAIT_1);
		break;
	case CTP_CLOSE_WAIT_1:
	case CTP_CLOSE_WAIT_2:
		FUNC0(csk);
		break;
	case CTP_ABORTING:
		break;
	default:
		FUNC6("csk 0x%p,%u,0x%lx,%u, bad state.\n",
			csk, csk->state, csk->flags, csk->tid);
	}
done:
	FUNC8(&csk->lock);
	FUNC3(csk);
}