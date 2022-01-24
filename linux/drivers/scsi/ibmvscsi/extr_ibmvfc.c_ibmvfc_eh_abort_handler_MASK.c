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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ibmvfc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int FAILED ; 
 int FAST_IO_FAIL ; 
 int /*<<< orphan*/  IBMVFC_TMF_ABORT_TASK_SET ; 
 int /*<<< orphan*/  IBMVFC_TMF_SUPPRESS_ABTS ; 
 int /*<<< orphan*/  LEAVE ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_match_lun ; 
 int FUNC3 (struct ibmvfc_host*,struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_host*) ; 
 struct ibmvfc_host* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *cmd)
{
	struct scsi_device *sdev = cmd->device;
	struct ibmvfc_host *vhost = FUNC5(sdev->host);
	int cancel_rc, block_rc;
	int rc = FAILED;

	ENTER;
	block_rc = FUNC0(cmd);
	FUNC4(vhost);
	if (block_rc != FAST_IO_FAIL) {
		cancel_rc = FUNC2(sdev, IBMVFC_TMF_ABORT_TASK_SET);
		FUNC1(sdev);
	} else
		cancel_rc = FUNC2(sdev, IBMVFC_TMF_SUPPRESS_ABTS);

	if (!cancel_rc)
		rc = FUNC3(vhost, sdev, ibmvfc_match_lun);

	if (block_rc == FAST_IO_FAIL && rc != FAILED)
		rc = FAST_IO_FAIL;

	LEAVE;
	return rc;
}