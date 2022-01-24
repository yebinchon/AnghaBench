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
struct uic_command {int argument1; int argument2; int argument3; int command; } ;
struct ufs_hba {struct uic_command* active_uic_cmd; } ;

/* Variables and functions */
 int COMMAND_OPCODE_MASK ; 
 int /*<<< orphan*/  REG_UIC_COMMAND ; 
 int /*<<< orphan*/  REG_UIC_COMMAND_ARG_1 ; 
 int /*<<< orphan*/  REG_UIC_COMMAND_ARG_2 ; 
 int /*<<< orphan*/  REG_UIC_COMMAND_ARG_3 ; 
 int /*<<< orphan*/  FUNC0 (struct uic_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct ufs_hba *hba, struct uic_command *uic_cmd)
{
	FUNC0(hba->active_uic_cmd);

	hba->active_uic_cmd = uic_cmd;

	/* Write Args */
	FUNC1(hba, uic_cmd->argument1, REG_UIC_COMMAND_ARG_1);
	FUNC1(hba, uic_cmd->argument2, REG_UIC_COMMAND_ARG_2);
	FUNC1(hba, uic_cmd->argument3, REG_UIC_COMMAND_ARG_3);

	/* Write UIC Cmd */
	FUNC1(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
		      REG_UIC_COMMAND);
}