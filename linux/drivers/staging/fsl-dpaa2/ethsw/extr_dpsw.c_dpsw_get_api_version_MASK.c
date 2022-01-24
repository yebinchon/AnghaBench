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
struct dpsw_rsp_get_api_version {int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_CMDID_GET_API_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
			 u32 cmd_flags,
			 u16 *major_ver,
			 u16 *minor_ver)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpsw_rsp_get_api_version *rsp_params;
	int err;

	cmd.header = FUNC1(DPSW_CMDID_GET_API_VERSION,
					  cmd_flags,
					  0);

	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	rsp_params = (struct dpsw_rsp_get_api_version *)cmd.params;
	*major_ver = FUNC0(rsp_params->version_major);
	*minor_ver = FUNC0(rsp_params->version_minor);

	return 0;
}