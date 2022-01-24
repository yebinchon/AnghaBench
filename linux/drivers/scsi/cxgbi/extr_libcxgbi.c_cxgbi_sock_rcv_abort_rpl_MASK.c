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
struct cxgbi_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ABORT_REQ_RCVD ; 
 int /*<<< orphan*/  CTPF_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  CTPF_ABORT_RPL_RCVD ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct cxgbi_sock *csk)
{
	FUNC3(csk);
	FUNC7(&csk->lock);

	FUNC5(csk, CTPF_ABORT_RPL_RCVD);
	if (FUNC2(csk, CTPF_ABORT_RPL_PENDING)) {
		FUNC0(csk, CTPF_ABORT_RPL_PENDING);
		if (FUNC2(csk, CTPF_ABORT_REQ_RCVD))
			FUNC6("csk 0x%p,%u,0x%lx,%u,ABT_RPL_RSS.\n",
			       csk, csk->state, csk->flags, csk->tid);
		FUNC1(csk);
	}

	FUNC8(&csk->lock);
	FUNC4(csk);
}