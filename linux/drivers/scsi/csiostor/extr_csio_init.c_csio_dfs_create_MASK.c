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
struct csio_hw {int /*<<< orphan*/  pdev; int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 scalar_t__ csio_debugfs_root ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct csio_hw *hw)
{
	if (csio_debugfs_root) {
		hw->debugfs_root = FUNC1(FUNC2(hw->pdev),
							csio_debugfs_root);
		FUNC0(hw);
	}

	return 0;
}