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
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_INT_CAUSE_A ; 
 int /*<<< orphan*/  MA_INT_WRAP_STATUS_A ; 
 int /*<<< orphan*/  MA_PARITY_ERROR_STATUS_A ; 
 int MEM_PERR_INT_CAUSE_F ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MEM_WRAP_INT_CAUSE_F ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 
 int FUNC4 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct csio_hw *hw)
{
	uint32_t v, status = FUNC4(hw, MA_INT_CAUSE_A);

	if (status & MEM_PERR_INT_CAUSE_F)
		FUNC2(hw, "MA parity error, parity status %#x\n",
			    FUNC4(hw, MA_PARITY_ERROR_STATUS_A));
	if (status & MEM_WRAP_INT_CAUSE_F) {
		v = FUNC4(hw, MA_INT_WRAP_STATUS_A);
		FUNC2(hw,
		   "MA address wrap-around error by client %u to address %#x\n",
		   FUNC1(v), FUNC0(v) << 4);
	}
	FUNC5(hw, status, MA_INT_CAUSE_A);
	FUNC3(hw);
}