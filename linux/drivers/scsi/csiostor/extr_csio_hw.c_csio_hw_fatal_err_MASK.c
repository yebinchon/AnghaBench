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
 int /*<<< orphan*/  GLOBALENABLE_F ; 
 int /*<<< orphan*/  SGE_CONTROL_A ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct csio_hw *hw)
{
	FUNC2(hw, SGE_CONTROL_A, GLOBALENABLE_F, 0);
	FUNC1(hw);

	/* Do not reset HW, we may need FW state for debugging */
	FUNC0(hw, "HW Fatal error encountered!\n");
}