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
struct fsl_mc_command {int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_CMDID_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC2(struct fsl_mc_io *mc_io,
		u32 cmd_flags,
		u16 token)
{
	struct fsl_mc_command cmd = { 0 };

	/* prepare command */
	cmd.header = FUNC0(DPSW_CMDID_ENABLE,
					  cmd_flags,
					  token);

	/* send command to mc*/
	return FUNC1(mc_io, &cmd);
}