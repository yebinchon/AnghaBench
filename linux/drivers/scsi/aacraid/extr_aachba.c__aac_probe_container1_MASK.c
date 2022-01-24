#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; } ;
struct fib {TYPE_4__* dev; } ;
struct aac_query_mount {void* type; void* count; void* command; } ;
struct aac_mount {void* status; TYPE_1__* mnt; } ;
struct TYPE_6__ {int supported_options2; } ;
struct TYPE_8__ {TYPE_2__ supplement_adapter_info; } ;
struct TYPE_5__ {void* vol; scalar_t__ capacityhigh; } ;

/* Variables and functions */
 int AAC_OPTION_VARIABLE_BLOCK_SIZE ; 
 int /*<<< orphan*/  AAC_OWNER_FIRMWARE ; 
 scalar_t__ CT_NONE ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int EINPROGRESS ; 
 scalar_t__ FT_FILESYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 scalar_t__ ST_OK ; 
 scalar_t__ VM_NameServe64 ; 
 scalar_t__ VM_NameServeAllBlk ; 
 int /*<<< orphan*/  FUNC0 (void*,struct fib*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  (*) (void*,struct fib*),void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,struct fib*) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct fib*) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC9(void * context, struct fib * fibptr)
{
	struct scsi_cmnd * scsicmd;
	struct aac_mount * dresp;
	struct aac_query_mount *dinfo;
	int status;

	dresp = (struct aac_mount *) FUNC6(fibptr);
	if (!FUNC3(fibptr->dev)) {
		dresp->mnt[0].capacityhigh = 0;
		if ((FUNC7(dresp->status) == ST_OK) &&
			(FUNC7(dresp->mnt[0].vol) != CT_NONE)) {
			FUNC0(context, fibptr);
			return;
		}
	}
	scsicmd = (struct scsi_cmnd *) context;

	if (!FUNC4(scsicmd, fibptr))
		return;

	FUNC1(fibptr);

	dinfo = (struct aac_query_mount *)FUNC6(fibptr);

	if (fibptr->dev->supplement_adapter_info.supported_options2 &
	    AAC_OPTION_VARIABLE_BLOCK_SIZE)
		dinfo->command = FUNC5(VM_NameServeAllBlk);
	else
		dinfo->command = FUNC5(VM_NameServe64);

	dinfo->count = FUNC5(FUNC8(scsicmd));
	dinfo->type = FUNC5(FT_FILESYS);
	scsicmd->SCp.phase = AAC_OWNER_FIRMWARE;

	status = FUNC2(ContainerCommand,
			  fibptr,
			  sizeof(struct aac_query_mount),
			  FsaNormal,
			  0, 1,
			  _aac_probe_container2,
			  (void *) scsicmd);
	/*
	 *	Check that the command queued to the controller
	 */
	if (status < 0 && status != -EINPROGRESS) {
		/* Inherit results from VM_NameServe, if any */
		dresp->status = FUNC5(ST_OK);
		FUNC0(context, fibptr);
	}
}