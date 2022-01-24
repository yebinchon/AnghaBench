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
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cbfn_q ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct csio_hw *hw)
{
	FUNC0(cbfn_q);

	FUNC1(hw, &cbfn_q);

	FUNC4(&hw->lock);
	FUNC2(hw, &cbfn_q);
	FUNC3(&hw->lock);
}