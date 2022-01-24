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
struct qla_tgt_cmd {int cmd_in_wq; int /*<<< orphan*/  work; int /*<<< orphan*/  trc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRC_DATA_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  tcm_qla2xxx_free_wq ; 
 int /*<<< orphan*/  tcm_qla2xxx_handle_data_work ; 

__attribute__((used)) static void FUNC3(struct qla_tgt_cmd *cmd)
{
	cmd->trc_flags |= TRC_DATA_IN;
	cmd->cmd_in_wq = 1;
	FUNC0(&cmd->work, tcm_qla2xxx_handle_data_work);
	FUNC1(FUNC2(), tcm_qla2xxx_free_wq, &cmd->work);
}