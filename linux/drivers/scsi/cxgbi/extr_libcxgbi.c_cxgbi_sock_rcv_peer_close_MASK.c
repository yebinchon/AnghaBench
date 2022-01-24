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
struct cxgbi_sock {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ABORT_RPL_PENDING ; 
#define  CTP_ABORTING 131 
#define  CTP_ACTIVE_CLOSE 130 
#define  CTP_CLOSE_WAIT_1 129 
 int /*<<< orphan*/  CTP_CLOSE_WAIT_2 ; 
#define  CTP_ESTABLISHED 128 
 int /*<<< orphan*/  CTP_PASSIVE_CLOSE ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,struct cxgbi_sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct cxgbi_sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct cxgbi_sock *csk)
{
	FUNC6(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
		csk, (csk)->state, (csk)->flags, (csk)->tid);
	FUNC3(csk);
	FUNC8(&csk->lock);

	if (FUNC2(csk, CTPF_ABORT_RPL_PENDING))
		goto done;

	switch (csk->state) {
	case CTP_ESTABLISHED:
		FUNC5(csk, CTP_PASSIVE_CLOSE);
		break;
	case CTP_ACTIVE_CLOSE:
		FUNC5(csk, CTP_CLOSE_WAIT_2);
		break;
	case CTP_CLOSE_WAIT_1:
		FUNC1(csk);
		break;
	case CTP_ABORTING:
		break;
	default:
		FUNC7("csk 0x%p,%u,0x%lx,%u, bad state.\n",
			csk, csk->state, csk->flags, csk->tid);
	}
	FUNC0(csk);
done:
	FUNC9(&csk->lock);
	FUNC4(csk);
}