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
struct cxgbi_sock {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__* cdev; int /*<<< orphan*/  receive_queue; scalar_t__ dst; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* csk_send_close_req ) (struct cxgbi_sock*) ;int /*<<< orphan*/  (* csk_send_abort_req ) (struct cxgbi_sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ACTIVE_CLOSE_NEEDED ; 
 int /*<<< orphan*/  CTPF_LOGOUT_RSP_RCVD ; 
 int /*<<< orphan*/  CTP_ACTIVE_CLOSE ; 
 scalar_t__ CTP_ACTIVE_OPEN ; 
 int /*<<< orphan*/  CTP_CLOSE_WAIT_2 ; 
 scalar_t__ CTP_ESTABLISHED ; 
 scalar_t__ CTP_PASSIVE_CLOSE ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*) ; 

__attribute__((used)) static void FUNC11(struct cxgbi_sock *csk)
{
	int data_lost;
	int close_req = 0;

	FUNC5(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
		csk, (csk)->state, (csk)->flags, (csk)->tid);
	FUNC7(&csk->lock);
	if (csk->dst)
		FUNC4(csk->dst);
	data_lost = FUNC6(&csk->receive_queue);
	FUNC0(&csk->receive_queue);

	if (csk->state == CTP_ACTIVE_OPEN)
		FUNC2(csk, CTPF_ACTIVE_CLOSE_NEEDED);
	else if (csk->state == CTP_ESTABLISHED) {
		close_req = 1;
		FUNC3(csk, CTP_ACTIVE_CLOSE);
	} else if (csk->state == CTP_PASSIVE_CLOSE) {
		close_req = 1;
		FUNC3(csk, CTP_CLOSE_WAIT_2);
	}

	if (close_req) {
		if (!FUNC1(csk, CTPF_LOGOUT_RSP_RCVD) ||
		    data_lost)
			csk->cdev->csk_send_abort_req(csk);
		else
			csk->cdev->csk_send_close_req(csk);
	}

	FUNC8(&csk->lock);
}