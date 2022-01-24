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
typedef  scalar_t__ uint32_t ;
struct fw_debug_cmd {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  pfn; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_PF_MAILBOX_CTRL_A ; 
 int /*<<< orphan*/  CIM_PF_MAILBOX_DATA_A ; 
 int /*<<< orphan*/  CSIO_MBOWNER_FW ; 
 int CSIO_MB_MAX_REGS ; 
 int MBINTREQ_F ; 
 int MBMSGVALID_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct csio_hw *hw)
{
	int i;
	__be64 cmd[CSIO_MB_MAX_REGS];
	uint32_t ctl_reg = FUNC1(hw->pfn, CIM_PF_MAILBOX_CTRL_A);
	uint32_t data_reg = FUNC1(hw->pfn, CIM_PF_MAILBOX_DATA_A);
	int size = sizeof(struct fw_debug_cmd);

	/* Copy mailbox data */
	for (i = 0; i < size; i += 8)
		cmd[i / 8] = FUNC2(FUNC5(hw, data_reg + i));

	FUNC3(hw, cmd);

	/* Notify FW of mailbox by setting owner as UP */
	FUNC6(hw, MBMSGVALID_F | MBINTREQ_F |
		      FUNC0(CSIO_MBOWNER_FW), ctl_reg);

	FUNC4(hw, ctl_reg);
	FUNC7();
}