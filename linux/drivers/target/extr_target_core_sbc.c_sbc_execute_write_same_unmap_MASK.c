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
struct se_cmd {int /*<<< orphan*/  t_task_lba; struct sbc_ops* protocol_data; } ;
struct sbc_ops {scalar_t__ (* execute_unmap ) (struct se_cmd*,int /*<<< orphan*/ ,scalar_t__) ;} ;
typedef  scalar_t__ sense_reason_t ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  GOOD ; 
 scalar_t__ FUNC0 (struct se_cmd*) ; 
 scalar_t__ FUNC1 (struct se_cmd*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sense_reason_t
FUNC3(struct se_cmd *cmd)
{
	struct sbc_ops *ops = cmd->protocol_data;
	sector_t nolb = FUNC0(cmd);
	sense_reason_t ret;

	if (nolb) {
		ret = ops->execute_unmap(cmd, cmd->t_task_lba, nolb);
		if (ret)
			return ret;
	}

	FUNC2(cmd, GOOD);
	return 0;
}