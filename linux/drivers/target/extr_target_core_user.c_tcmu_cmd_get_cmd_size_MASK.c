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
struct tcmu_cmd {struct se_cmd* se_cmd; } ;
struct se_cmd {int /*<<< orphan*/  t_task_cdb; } ;

/* Variables and functions */
 int TCMU_OP_ALIGN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t FUNC3(struct tcmu_cmd *tcmu_cmd,
					   size_t base_command_size)
{
	struct se_cmd *se_cmd = tcmu_cmd->se_cmd;
	size_t command_size;

	command_size = base_command_size +
		FUNC1(FUNC2(se_cmd->t_task_cdb),
				TCMU_OP_ALIGN_SIZE);

	FUNC0(command_size & (TCMU_OP_ALIGN_SIZE-1));

	return command_size;
}