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
struct csio_hw {int /*<<< orphan*/  regstart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*) ; 

__attribute__((used)) static void
FUNC7(struct csio_hw *hw)
{
	FUNC3(hw, true);
	FUNC2(hw);
	FUNC1(hw);
	FUNC5(hw->regstart);
	FUNC0(hw);
	FUNC4(hw);
	FUNC6(hw);
}