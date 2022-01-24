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
struct subchannel {int /*<<< orphan*/  lock; } ;
struct eadm_private {int /*<<< orphan*/  state; } ;
struct aob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EADM_NOT_OPER ; 
 int /*<<< orphan*/  EADM_TIMEOUT ; 
 int EBUSY ; 
 int /*<<< orphan*/  SCH_TODO_EVAL ; 
 int /*<<< orphan*/  FUNC0 (struct subchannel*,int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct subchannel*,struct aob*) ; 
 struct eadm_private* FUNC4 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC7(struct aob *aob)
{
	struct eadm_private *private;
	struct subchannel *sch;
	unsigned long flags;
	int ret;

	sch = FUNC1();
	if (!sch)
		return -EBUSY;

	FUNC5(sch->lock, flags);
	FUNC2(sch, EADM_TIMEOUT);
	ret = FUNC3(sch, aob);
	if (!ret)
		goto out_unlock;

	/* Handle start subchannel failure. */
	FUNC2(sch, 0);
	private = FUNC4(sch);
	private->state = EADM_NOT_OPER;
	FUNC0(sch, SCH_TODO_EVAL);

out_unlock:
	FUNC6(sch->lock, flags);

	return ret;
}