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
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpsw_cmd_fdb_set_learning_mode {int /*<<< orphan*/  mode; int /*<<< orphan*/  fdb_id; } ;
typedef  enum dpsw_fdb_learning_mode { ____Placeholder_dpsw_fdb_learning_mode } dpsw_fdb_learning_mode ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_CMDID_FDB_SET_LEARNING_MODE ; 
 int /*<<< orphan*/  LEARNING_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			       u32 cmd_flags,
			       u16 token,
			       u16 fdb_id,
			       enum dpsw_fdb_learning_mode mode)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpsw_cmd_fdb_set_learning_mode *cmd_params;

	/* prepare command */
	cmd.header = FUNC2(DPSW_CMDID_FDB_SET_LEARNING_MODE,
					  cmd_flags,
					  token);
	cmd_params = (struct dpsw_cmd_fdb_set_learning_mode *)cmd.params;
	cmd_params->fdb_id = FUNC0(fdb_id);
	FUNC1(cmd_params->mode, LEARNING_MODE, mode);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}