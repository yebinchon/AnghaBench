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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
#define  CMDT_INIT 128 
 int CMD_ENTER_MODE ; 
 int CMD_EXIT_MODE ; 
 unsigned int PD_T_VDM_E_MODE ; 
 unsigned int PD_T_VDM_RCVR_RSP ; 
 unsigned int PD_T_VDM_SNDR_RSP ; 
 unsigned int PD_T_VDM_UNSTRUCTURED ; 
 unsigned int PD_T_VDM_WAIT_MODE_E ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(u32 vdm_hdr)
{
	unsigned int timeout;
	int cmd = FUNC0(vdm_hdr);

	/* its not a structured VDM command */
	if (!FUNC2(vdm_hdr))
		return PD_T_VDM_UNSTRUCTURED;

	switch (FUNC1(vdm_hdr)) {
	case CMDT_INIT:
		if (cmd == CMD_ENTER_MODE || cmd == CMD_EXIT_MODE)
			timeout = PD_T_VDM_WAIT_MODE_E;
		else
			timeout = PD_T_VDM_SNDR_RSP;
		break;
	default:
		if (cmd == CMD_ENTER_MODE || cmd == CMD_EXIT_MODE)
			timeout = PD_T_VDM_E_MODE;
		else
			timeout = PD_T_VDM_RCVR_RSP;
		break;
	}
	return timeout;
}