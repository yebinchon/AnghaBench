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
struct venus_comm {int /*<<< orphan*/  vc_mutex; } ;
struct upc_req {int uc_flags; int /*<<< orphan*/  uc_sleep; int /*<<< orphan*/  uc_chain; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct upc_req*) ; 
 int CODA_REQ_ABORT ; 
 int CODA_REQ_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long coda_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static inline void FUNC14(struct venus_comm *vcp,
				       struct upc_req *req)
{
	FUNC1(wait, current);
	unsigned long timeout = jiffies + coda_timeout * HZ;
	sigset_t old;
	int blocked;

	FUNC3(&old);
	blocked = 1;

	FUNC2(&req->uc_sleep, &wait);
	for (;;) {
		if (FUNC0(req))
			FUNC11(TASK_INTERRUPTIBLE);
		else
			FUNC11(TASK_UNINTERRUPTIBLE);

		/* got a reply */
		if (req->uc_flags & (CODA_REQ_WRITE | CODA_REQ_ABORT))
			break;

		if (blocked && FUNC13(jiffies, timeout) &&
		    FUNC0(req))
		{
			FUNC4(&old);
			blocked = 0;
		}

		if (FUNC12(current)) {
			FUNC5(&req->uc_chain);
			break;
		}

		FUNC7(&vcp->vc_mutex);
		if (blocked)
			FUNC10(HZ);
		else
			FUNC9();
		FUNC6(&vcp->vc_mutex);
	}
	if (blocked)
		FUNC4(&old);

	FUNC8(&req->uc_sleep, &wait);
	FUNC11(TASK_RUNNING);
}