#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct csio_hw {TYPE_1__* chip_ops; int /*<<< orphan*/  debugfs_root; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_dfs_create_ext_mem ) (struct csio_hw*) ;} ;

/* Variables and functions */
 int EDRAM0_ENABLE_F ; 
 int EDRAM1_ENABLE_F ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_TARGET_MEM_ENABLE_A ; 
 int /*<<< orphan*/  MEM_EDC0 ; 
 int /*<<< orphan*/  MEM_EDC1 ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 

__attribute__((used)) static int FUNC4(struct csio_hw *hw)
{
	int i;

	if (FUNC0(hw->debugfs_root))
		return -1;

	i = FUNC2(hw, MA_TARGET_MEM_ENABLE_A);
	if (i & EDRAM0_ENABLE_F)
		FUNC1(hw, "edc0", MEM_EDC0, 5);
	if (i & EDRAM1_ENABLE_F)
		FUNC1(hw, "edc1", MEM_EDC1, 5);

	hw->chip_ops->chip_dfs_create_ext_mem(hw);
	return 0;
}