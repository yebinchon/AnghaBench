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
struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  LPFC_MBX_WAIT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 

__attribute__((used)) static int
FUNC6(struct scsi_cmnd *cmnd)
{
	struct Scsi_Host *shost = cmnd->device->host;
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba *phba = vport->phba;
	int rc, ret = SUCCESS;

	FUNC3(vport, KERN_ERR, LOG_FCP,
			 "3172 SCSI layer issued Host Reset Data:\n");

	FUNC1(phba, LPFC_MBX_WAIT);
	FUNC0(phba);
	rc = FUNC4(phba);
	if (rc)
		goto error;

	rc = FUNC2(phba);
	if (rc)
		goto error;

	FUNC5(phba);

	return ret;
error:
	FUNC3(vport, KERN_ERR, LOG_FCP,
			 "3323 Failed host reset\n");
	FUNC5(phba);
	return FAILED;
}