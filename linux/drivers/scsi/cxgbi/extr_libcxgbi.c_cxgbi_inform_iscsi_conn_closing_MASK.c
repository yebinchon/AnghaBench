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
struct cxgbi_sock {scalar_t__ state; int /*<<< orphan*/  callback_lock; scalar_t__ user_data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ CTP_ESTABLISHED ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  ISCSI_ERR_TCP_CONN_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cxgbi_sock *csk)
{
	FUNC1(1 << CXGBI_DBG_SOCK,
		"csk 0x%p, state %u, flags 0x%lx, conn 0x%p.\n",
		csk, csk->state, csk->flags, csk->user_data);

	if (csk->state != CTP_ESTABLISHED) {
		FUNC2(&csk->callback_lock);
		if (csk->user_data)
			FUNC0(csk->user_data,
					ISCSI_ERR_TCP_CONN_CLOSE);
		FUNC3(&csk->callback_lock);
	}
}