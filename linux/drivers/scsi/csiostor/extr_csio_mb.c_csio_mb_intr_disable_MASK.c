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
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_PF_HOST_INT_ENABLE_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct csio_hw *hw)
{
	FUNC3(hw, FUNC0(0),
		      FUNC1(CIM_PF_HOST_INT_ENABLE_A));
	FUNC2(hw, FUNC1(CIM_PF_HOST_INT_ENABLE_A));
}