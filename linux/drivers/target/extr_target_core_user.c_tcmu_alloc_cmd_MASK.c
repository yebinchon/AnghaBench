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
typedef  int /*<<< orphan*/  uint32_t ;
struct tcmu_dev {int dummy; } ;
struct tcmu_cmd {int /*<<< orphan*/  dbi; int /*<<< orphan*/  dbi_cnt; struct tcmu_dev* tcmu_dev; struct se_cmd* se_cmd; int /*<<< orphan*/  queue_entry; } ;
struct se_device {int dummy; } ;
struct se_cmd {struct se_device* se_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tcmu_dev* FUNC1 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tcmu_cmd*) ; 
 struct tcmu_cmd* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcmu_cmd_cache ; 
 int /*<<< orphan*/  FUNC5 (struct tcmu_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcmu_cmd*) ; 

__attribute__((used)) static struct tcmu_cmd *FUNC7(struct se_cmd *se_cmd)
{
	struct se_device *se_dev = se_cmd->se_dev;
	struct tcmu_dev *udev = FUNC1(se_dev);
	struct tcmu_cmd *tcmu_cmd;

	tcmu_cmd = FUNC4(tcmu_cmd_cache, GFP_KERNEL);
	if (!tcmu_cmd)
		return NULL;

	FUNC0(&tcmu_cmd->queue_entry);
	tcmu_cmd->se_cmd = se_cmd;
	tcmu_cmd->tcmu_dev = udev;

	FUNC6(tcmu_cmd);
	tcmu_cmd->dbi_cnt = FUNC5(tcmu_cmd);
	tcmu_cmd->dbi = FUNC2(tcmu_cmd->dbi_cnt, sizeof(uint32_t),
				GFP_KERNEL);
	if (!tcmu_cmd->dbi) {
		FUNC3(tcmu_cmd_cache, tcmu_cmd);
		return NULL;
	}

	return tcmu_cmd;
}