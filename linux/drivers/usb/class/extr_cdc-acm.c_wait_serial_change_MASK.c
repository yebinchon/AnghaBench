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
struct async_icount {scalar_t__ dsr; scalar_t__ dcd; scalar_t__ rng; } ;
struct acm {scalar_t__ disconnected; int /*<<< orphan*/  wioctl; int /*<<< orphan*/  read_lock; struct async_icount oldcount; struct async_icount iocount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct acm *acm, unsigned long arg)
{
	int rv = 0;
	FUNC0(wait, current);
	struct async_icount old, new;

	do {
		FUNC6(&acm->read_lock);
		old = acm->oldcount;
		new = acm->iocount;
		acm->oldcount = new;
		FUNC7(&acm->read_lock);

		if ((arg & TIOCM_DSR) &&
			old.dsr != new.dsr)
			break;
		if ((arg & TIOCM_CD)  &&
			old.dcd != new.dcd)
			break;
		if ((arg & TIOCM_RI) &&
			old.rng != new.rng)
			break;

		FUNC1(&acm->wioctl, &wait);
		FUNC4(TASK_INTERRUPTIBLE);
		FUNC3();
		FUNC2(&acm->wioctl, &wait);
		if (acm->disconnected) {
			if (arg & TIOCM_CD)
				break;
			else
				rv = -ENODEV;
		} else {
			if (FUNC5(current))
				rv = -ERESTARTSYS;
		}
	} while (!rv);

	

	return rv;
}