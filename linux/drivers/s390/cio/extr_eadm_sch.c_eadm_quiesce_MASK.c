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
struct eadm_private {scalar_t__ state; int /*<<< orphan*/ * completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EADM_BUSY ; 
 int EBUSY ; 
 int FUNC1 (struct subchannel*) ; 
 int /*<<< orphan*/  completion ; 
 scalar_t__ FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*,int /*<<< orphan*/ ) ; 
 struct eadm_private* FUNC4 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct subchannel *sch)
{
	struct eadm_private *private = FUNC4(sch);
	FUNC0(completion);
	int ret;

	FUNC5(sch->lock);
	if (private->state != EADM_BUSY)
		goto disable;

	if (FUNC2(sch))
		goto disable;

	private->completion = &completion;
	FUNC6(sch->lock);

	FUNC7(&completion);

	FUNC5(sch->lock);
	private->completion = NULL;

disable:
	FUNC3(sch, 0);
	do {
		ret = FUNC1(sch);
	} while (ret == -EBUSY);

	FUNC6(sch->lock);
}