#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int dummy; } ;
struct megasas_instance {int max_num_sge; } ;
struct megasas_cmd_fusion {scalar_t__ pd_interface; TYPE_1__* io_request; } ;
struct MPI25_IEEE_SGE_CHAIN64 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  IoFlags; int /*<<< orphan*/  SGL; } ;

/* Variables and functions */
 int MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH ; 
 scalar_t__ NVME_PD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct megasas_instance*,struct scsi_cmnd*,struct MPI25_IEEE_SGE_CHAIN64*,struct megasas_cmd_fusion*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*,struct scsi_cmnd*,struct MPI25_IEEE_SGE_CHAIN64*,struct megasas_cmd_fusion*,int) ; 
 int FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static
int FUNC4(struct megasas_instance *instance, struct scsi_cmnd *scp,
		     struct megasas_cmd_fusion *cmd)
{
	int sge_count;
	bool build_prp = false;
	struct MPI25_IEEE_SGE_CHAIN64 *sgl_chain64;

	sge_count = FUNC3(scp);

	if ((sge_count > instance->max_num_sge) || (sge_count <= 0))
		return sge_count;

	sgl_chain64 = (struct MPI25_IEEE_SGE_CHAIN64 *)&cmd->io_request->SGL;
	if ((FUNC0(cmd->io_request->IoFlags) &
	    MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH) &&
	    (cmd->pd_interface == NVME_PD))
		build_prp = FUNC1(instance, scp, sgl_chain64,
						  cmd, sge_count);

	if (!build_prp)
		FUNC2(instance, scp, sgl_chain64,
					cmd, sge_count);

	return sge_count;
}