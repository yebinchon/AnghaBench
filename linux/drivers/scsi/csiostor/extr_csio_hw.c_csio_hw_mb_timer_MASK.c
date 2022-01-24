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
struct timer_list {int dummy; } ;
struct csio_mbm {struct csio_hw* hw; } ;
struct csio_mb {int /*<<< orphan*/  (* mb_cbfn ) (struct csio_hw*,struct csio_mb*) ;} ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct csio_mb* FUNC0 (struct csio_hw*) ; 
 struct csio_mbm* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct csio_mbm* mbm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void
FUNC5(struct timer_list *t)
{
	struct csio_mbm *mbm = FUNC1(mbm, t, timer);
	struct csio_hw *hw = mbm->hw;
	struct csio_mb *mbp = NULL;

	FUNC2(&hw->lock);
	mbp = FUNC0(hw);
	FUNC3(&hw->lock);

	/* Call back the function for the timed-out Mailbox */
	if (mbp)
		mbp->mb_cbfn(hw, mbp);

}