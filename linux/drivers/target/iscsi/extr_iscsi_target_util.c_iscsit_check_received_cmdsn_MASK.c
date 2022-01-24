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
typedef  scalar_t__ u32 ;
struct iscsi_session {scalar_t__ exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; } ;

/* Variables and functions */
 int CMDSN_HIGHER_THAN_EXP ; 
 int CMDSN_LOWER_THAN_EXP ; 
 int CMDSN_MAXCMDSN_OVERRUN ; 
 int CMDSN_NORMAL_OPERATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline int FUNC4(struct iscsi_session *sess, u32 cmdsn)
{
	u32 max_cmdsn;
	int ret;

	/*
	 * This is the proper method of checking received CmdSN against
	 * ExpCmdSN and MaxCmdSN values, as well as accounting for out
	 * or order CmdSNs due to multiple connection sessions and/or
	 * CRC failures.
	 */
	max_cmdsn = FUNC0(&sess->max_cmd_sn);
	if (FUNC1(cmdsn, max_cmdsn)) {
		FUNC3("Received CmdSN: 0x%08x is greater than"
		       " MaxCmdSN: 0x%08x, ignoring.\n", cmdsn, max_cmdsn);
		ret = CMDSN_MAXCMDSN_OVERRUN;

	} else if (cmdsn == sess->exp_cmd_sn) {
		sess->exp_cmd_sn++;
		FUNC2("Received CmdSN matches ExpCmdSN,"
		      " incremented ExpCmdSN to: 0x%08x\n",
		      sess->exp_cmd_sn);
		ret = CMDSN_NORMAL_OPERATION;

	} else if (FUNC1(cmdsn, sess->exp_cmd_sn)) {
		FUNC2("Received CmdSN: 0x%08x is greater"
		      " than ExpCmdSN: 0x%08x, not acknowledging.\n",
		      cmdsn, sess->exp_cmd_sn);
		ret = CMDSN_HIGHER_THAN_EXP;

	} else {
		FUNC3("Received CmdSN: 0x%08x is less than"
		       " ExpCmdSN: 0x%08x, ignoring.\n", cmdsn,
		       sess->exp_cmd_sn);
		ret = CMDSN_LOWER_THAN_EXP;
	}

	return ret;
}