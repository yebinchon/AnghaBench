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
struct zfcp_scsi_dev {TYPE_1__* port; int /*<<< orphan*/  status; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; int /*<<< orphan*/  device; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_IMM_RETRY ; 
 int EBUSY ; 
 int SCSI_MLQUEUE_DEVICE_BUSY ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct zfcp_scsi_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct fc_rport* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC10(struct Scsi_Host *shost, struct scsi_cmnd *scpnt)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC3(scpnt->device);
	struct fc_rport *rport = FUNC4(FUNC2(scpnt->device));
	int    status, scsi_result, ret;

	/* reset the status for this request */
	scpnt->result = 0;
	scpnt->host_scribble = NULL;

	scsi_result = FUNC1(rport);
	if (FUNC6(scsi_result)) {
		scpnt->result = scsi_result;
		FUNC7(scpnt);
		scpnt->scsi_done(scpnt);
		return 0;
	}

	status = FUNC0(&zfcp_sdev->status);
	if (FUNC6(status & ZFCP_STATUS_COMMON_ERP_FAILED) &&
		     !(FUNC0(&zfcp_sdev->port->status) &
		       ZFCP_STATUS_COMMON_ERP_FAILED)) {
		/* only LUN access denied, but port is good
		 * not covered by FC transport, have to fail here */
		FUNC9(scpnt, DID_ERROR);
		return 0;
	}

	if (FUNC6(!(status & ZFCP_STATUS_COMMON_UNBLOCKED))) {
		/* This could be
		 * call to rport_delete pending: mimic retry from
		 * 	fc_remote_port_chkready until rport is BLOCKED
		 */
		FUNC9(scpnt, DID_IMM_RETRY);
		return 0;
	}

	ret = FUNC8(scpnt);
	if (FUNC6(ret == -EBUSY))
		return SCSI_MLQUEUE_DEVICE_BUSY;
	else if (FUNC6(ret < 0))
		return SCSI_MLQUEUE_HOST_BUSY;

	return ret;
}