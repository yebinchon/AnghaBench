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
struct ipw_hardware {int to_setup; int /*<<< orphan*/  lock; scalar_t__ shutting_down; } ;

/* Variables and functions */
 int PRIO_SETUP ; 
 int FUNC0 (struct ipw_hardware*) ; 
 int FUNC1 (struct ipw_hardware*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_hardware*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_hardware*) ; 
 int FUNC4 (struct ipw_hardware*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long hw_)
{
	struct ipw_hardware *hw = (struct ipw_hardware *) hw_;
	unsigned long flags;

	FUNC5(&hw->lock, flags);
	if (hw->shutting_down) {
		FUNC6(&hw->lock, flags);
		return;
	}

	if (hw->to_setup == 1) {
		/*
		 * Initial setup data sent to hardware
		 */
		hw->to_setup = 2;
		FUNC6(&hw->lock, flags);

		FUNC3(hw);
		FUNC2(hw);

		FUNC4(hw, PRIO_SETUP + 1);
		FUNC1(hw);
	} else {
		int priority_limit = FUNC0(hw);
		int again;

		FUNC6(&hw->lock, flags);

		do {
			again = FUNC4(hw, priority_limit);
			again |= FUNC1(hw);
		} while (again);
	}
}