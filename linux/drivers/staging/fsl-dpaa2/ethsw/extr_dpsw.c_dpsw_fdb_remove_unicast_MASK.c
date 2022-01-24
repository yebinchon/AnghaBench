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
struct dpsw_fdb_unicast_cfg {int /*<<< orphan*/  type; int /*<<< orphan*/  if_egress; int /*<<< orphan*/ * mac_addr; } ;
struct dpsw_cmd_fdb_unicast_op {int /*<<< orphan*/  type; void* if_egress; int /*<<< orphan*/ * mac_addr; void* fdb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_CMDID_FDB_REMOVE_UNICAST ; 
 int /*<<< orphan*/  ENTRY_TYPE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			    u32 cmd_flags,
			    u16 token,
			    u16 fdb_id,
			    const struct dpsw_fdb_unicast_cfg *cfg)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpsw_cmd_fdb_unicast_op *cmd_params;
	int i;

	/* prepare command */
	cmd.header = FUNC2(DPSW_CMDID_FDB_REMOVE_UNICAST,
					  cmd_flags,
					  token);
	cmd_params = (struct dpsw_cmd_fdb_unicast_op *)cmd.params;
	cmd_params->fdb_id = FUNC0(fdb_id);
	for (i = 0; i < 6; i++)
		cmd_params->mac_addr[i] = cfg->mac_addr[5 - i];
	cmd_params->if_egress = FUNC0(cfg->if_egress);
	FUNC1(cmd_params->type, ENTRY_TYPE, cfg->type);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}