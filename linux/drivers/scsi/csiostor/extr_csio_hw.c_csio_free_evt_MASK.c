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
struct csio_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  evt_free_q; } ;
struct csio_evt_msg {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_evt_activeq ; 
 int /*<<< orphan*/  n_evt_freeq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct csio_hw *hw, struct csio_evt_msg *evt_entry)
{
	if (evt_entry) {
		FUNC4(&hw->lock);
		FUNC3(&evt_entry->list);
		FUNC2(&evt_entry->list, &hw->evt_free_q);
		FUNC0(hw, n_evt_activeq);
		FUNC1(hw, n_evt_freeq);
		FUNC5(&hw->lock);
	}
}