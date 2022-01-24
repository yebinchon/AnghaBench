#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct fsa_dev_info {int valid; } ;
struct aac_dev {struct fsa_dev_info* fsa_dev; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 size_t FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd * scsicmd)
{
	struct fsa_dev_info *fsa_dev_ptr = ((struct aac_dev *)(scsicmd->device->host->hostdata))->fsa_dev;

	if ((fsa_dev_ptr[FUNC1(scsicmd)].valid & 1))
		return FUNC0(scsicmd);

	scsicmd->result = DID_NO_CONNECT << 16;
	scsicmd->scsi_done(scsicmd);
	return 0;
}