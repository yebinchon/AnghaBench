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
typedef  int uint32_t ;
struct csio_hw {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CSIO_HWF_FWEVT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct csio_hw *hw)
{
	uint32_t count;
	count = 30;
	while (hw->flags & CSIO_HWF_FWEVT_PENDING && count--) {
		FUNC3(&hw->lock);
		FUNC1(2000);
		FUNC2(&hw->lock);
	}

	FUNC0(!(hw->flags & CSIO_HWF_FWEVT_PENDING));
}