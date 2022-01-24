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
struct csio_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HWE_CFG ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  csio_hws_uninit ; 
 scalar_t__ FUNC0 (struct csio_hw*) ; 
 scalar_t__ FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct csio_hw *hw)
{
	FUNC3(&hw->lock);
	FUNC2(&hw->sm, CSIO_HWE_CFG);
	FUNC4(&hw->lock);

	if (FUNC0(hw))
		return 0;
	else if (FUNC1(hw, csio_hws_uninit))
		return -EINVAL;
	else
		return -ENODEV;
}