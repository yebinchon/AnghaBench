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
struct csio_hw {int /*<<< orphan*/  sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HWE_PCI_REMOVE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(struct csio_hw *hw)
{
	FUNC1(&hw->sm, CSIO_HWE_PCI_REMOVE);

	if (FUNC0(hw))
		return 0;
	else
		return -EINVAL;
}