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
struct cxgbi_sock {scalar_t__ flags; struct cxgbi_device* cdev; int /*<<< orphan*/  callback_lock; int /*<<< orphan*/  cmpl; int /*<<< orphan*/  retry_timer; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  receive_queue; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; } ;
struct cxgbi_device {scalar_t__ (* csk_alloc_cpls ) (struct cxgbi_sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTP_CLOSED ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cxgbi_sock* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_device*,struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cxgbi_sock *FUNC12(struct cxgbi_device *cdev)
{
	struct cxgbi_sock *csk = FUNC4(sizeof(*csk), GFP_NOIO);

	if (!csk) {
		FUNC6("alloc csk %zu failed.\n", sizeof(*csk));
		return NULL;
	}

	if (cdev->csk_alloc_cpls(csk) < 0) {
		FUNC6("csk 0x%p, alloc cpls failed.\n", csk);
		FUNC2(csk);
		return NULL;
	}

	FUNC9(&csk->lock);
	FUNC3(&csk->refcnt);
	FUNC8(&csk->receive_queue);
	FUNC8(&csk->write_queue);
	FUNC11(&csk->retry_timer, NULL, 0);
	FUNC1(&csk->cmpl);
	FUNC7(&csk->callback_lock);
	csk->cdev = cdev;
	csk->flags = 0;
	FUNC0(csk, CTP_CLOSED);

	FUNC5(1 << CXGBI_DBG_SOCK, "cdev 0x%p, new csk 0x%p.\n", cdev, csk);

	return csk;
}