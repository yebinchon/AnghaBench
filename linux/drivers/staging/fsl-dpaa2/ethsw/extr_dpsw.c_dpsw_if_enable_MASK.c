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
struct dpsw_cmd_if {int /*<<< orphan*/  if_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_CMDID_IF_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
		   u32 cmd_flags,
		   u16 token,
		   u16 if_id)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpsw_cmd_if *cmd_params;

	/* prepare command */
	cmd.header = FUNC1(DPSW_CMDID_IF_ENABLE,
					  cmd_flags,
					  token);
	cmd_params = (struct dpsw_cmd_if *)cmd.params;
	cmd_params->if_id = FUNC0(if_id);

	/* send command to mc*/
	return FUNC2(mc_io, &cmd);
}