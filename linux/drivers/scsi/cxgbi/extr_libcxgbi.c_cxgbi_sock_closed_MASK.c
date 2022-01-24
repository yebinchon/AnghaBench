#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sin_port; } ;
struct cxgbi_sock {scalar_t__ state; TYPE_2__* cdev; scalar_t__ dst; TYPE_1__ saddr; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* csk_release_offload_resources ) (struct cxgbi_sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ACTIVE_CLOSE_NEEDED ; 
 scalar_t__ CTP_ACTIVE_OPEN ; 
 scalar_t__ CTP_CLOSED ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 

void FUNC8(struct cxgbi_sock *csk)
{
	FUNC5(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
		csk, (csk)->state, (csk)->flags, (csk)->tid);
	FUNC2(csk, CTPF_ACTIVE_CLOSE_NEEDED);
	if (csk->state == CTP_ACTIVE_OPEN || csk->state == CTP_CLOSED)
		return;
	if (csk->saddr.sin_port)
		FUNC6(csk);
	if (csk->dst)
		FUNC4(csk->dst);
	csk->cdev->csk_release_offload_resources(csk);
	FUNC3(csk, CTP_CLOSED);
	FUNC0(csk);
	FUNC1(csk);
}