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
struct se_cmd {int se_cmd_flags; int /*<<< orphan*/  alua_nonop_delay; } ;

/* Variables and functions */
 int SCF_ALUA_NON_OPTIMIZED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(
	struct se_cmd *cmd)
{
	if (!(cmd->se_cmd_flags & SCF_ALUA_NON_OPTIMIZED))
		return 0;
	if (FUNC0())
		return 0;
	/*
	 * The ALUA Active/NonOptimized access state delay can be disabled
	 * in via configfs with a value of zero
	 */
	if (!cmd->alua_nonop_delay)
		return 0;
	/*
	 * struct se_cmd->alua_nonop_delay gets set by a target port group
	 * defined interval in core_alua_state_nonoptimized()
	 */
	FUNC1(cmd->alua_nonop_delay);
	return 0;
}