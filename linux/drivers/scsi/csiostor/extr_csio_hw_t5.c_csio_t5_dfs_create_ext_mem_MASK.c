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
typedef  void* u32 ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int EXT_MEM1_ENABLE_F ; 
 int EXT_MEM_ENABLE_F ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  MA_EXT_MEMORY1_BAR_A ; 
 int /*<<< orphan*/  MA_EXT_MEMORY_BAR_A ; 
 int /*<<< orphan*/  MA_TARGET_MEM_ENABLE_A ; 
 int /*<<< orphan*/  MEM_MC0 ; 
 int /*<<< orphan*/  MEM_MC1 ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct csio_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct csio_hw *hw)
{
	u32 size;
	int i = FUNC2(hw, MA_TARGET_MEM_ENABLE_A);

	if (i & EXT_MEM_ENABLE_F) {
		size = FUNC2(hw, MA_EXT_MEMORY_BAR_A);
		FUNC1(hw, "mc0", MEM_MC0,
				     FUNC0(size));
	}
	if (i & EXT_MEM1_ENABLE_F) {
		size = FUNC2(hw, MA_EXT_MEMORY1_BAR_A);
		FUNC1(hw, "mc1", MEM_MC1,
				     FUNC0(size));
	}
}