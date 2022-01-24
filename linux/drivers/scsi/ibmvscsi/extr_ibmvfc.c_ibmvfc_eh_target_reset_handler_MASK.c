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
struct scsi_target {int dummy; } ;
struct scsi_device {int /*<<< orphan*/  host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ibmvfc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int FAILED ; 
 int FAST_IO_FAIL ; 
 int /*<<< orphan*/  IBMVFC_TARGET_RESET ; 
 int /*<<< orphan*/  LEAVE ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  ibmvfc_dev_cancel_all_noreset ; 
 int /*<<< orphan*/  ibmvfc_dev_cancel_all_reset ; 
 int /*<<< orphan*/  ibmvfc_match_target ; 
 int FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ibmvfc_host*,struct scsi_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*) ; 
 struct scsi_target* FUNC4 (struct scsi_device*) ; 
 struct ibmvfc_host* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_target*,unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *cmd)
{
	struct scsi_device *sdev = cmd->device;
	struct ibmvfc_host *vhost = FUNC5(sdev->host);
	struct scsi_target *starget = FUNC4(sdev);
	int block_rc;
	int reset_rc = 0;
	int rc = FAILED;
	unsigned long cancel_rc = 0;

	ENTER;
	block_rc = FUNC0(cmd);
	FUNC3(vhost);
	if (block_rc != FAST_IO_FAIL) {
		FUNC6(starget, &cancel_rc, ibmvfc_dev_cancel_all_reset);
		reset_rc = FUNC1(sdev, IBMVFC_TARGET_RESET, "target");
	} else
		FUNC6(starget, &cancel_rc, ibmvfc_dev_cancel_all_noreset);

	if (!cancel_rc && !reset_rc)
		rc = FUNC2(vhost, starget, ibmvfc_match_target);

	if (block_rc == FAST_IO_FAIL && rc != FAILED)
		rc = FAST_IO_FAIL;

	LEAVE;
	return rc;
}