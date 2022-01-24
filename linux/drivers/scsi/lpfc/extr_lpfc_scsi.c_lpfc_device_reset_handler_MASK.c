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
typedef  int /*<<< orphan*/  uint64_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_scsi_event_header {int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  lun; int /*<<< orphan*/  subcategory; int /*<<< orphan*/  event_type; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_nodename; int /*<<< orphan*/  nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  scsi_event ;
struct TYPE_2__ {unsigned int id; int /*<<< orphan*/  lun; struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FCP_LUN_RESET ; 
 int /*<<< orphan*/  FC_REG_SCSI_EVENT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  LPFC_CTX_LUN ; 
 int /*<<< orphan*/  LPFC_EVENT_LUNRESET ; 
 int /*<<< orphan*/  LPFC_NL_VENDOR_ID ; 
 int SUCCESS ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lpfc_vport*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct lpfc_vport*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpfc_rport_data* FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct lpfc_vport*,struct scsi_cmnd*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(struct scsi_cmnd *cmnd)
{
	struct Scsi_Host  *shost = cmnd->device->host;
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_rport_data *rdata;
	struct lpfc_nodelist *pnode;
	unsigned tgt_id = cmnd->device->id;
	uint64_t lun_id = cmnd->device->lun;
	struct lpfc_scsi_event_header scsi_event;
	int status;

	rdata = FUNC6(cmnd->device);
	if (!rdata || !rdata->pnode) {
		FUNC4(vport, KERN_ERR, LOG_FCP,
				 "0798 Device Reset rdata failure: rdata x%px\n",
				 rdata);
		return FAILED;
	}
	pnode = rdata->pnode;
	status = FUNC0(cmnd);
	if (status != 0 && status != SUCCESS)
		return status;

	status = FUNC3(vport, cmnd);
	if (status == FAILED) {
		FUNC4(vport, KERN_ERR, LOG_FCP,
			"0721 Device Reset rport failure: rdata x%px\n", rdata);
		return FAILED;
	}

	scsi_event.event_type = FC_REG_SCSI_EVENT;
	scsi_event.subcategory = LPFC_EVENT_LUNRESET;
	scsi_event.lun = lun_id;
	FUNC8(scsi_event.wwpn, &pnode->nlp_portname, sizeof(struct lpfc_name));
	FUNC8(scsi_event.wwnn, &pnode->nlp_nodename, sizeof(struct lpfc_name));

	FUNC2(shost, FUNC1(),
		sizeof(scsi_event), (char *)&scsi_event, LPFC_NL_VENDOR_ID);

	status = FUNC7(vport, cmnd, tgt_id, lun_id,
						FCP_LUN_RESET);

	FUNC4(vport, KERN_ERR, LOG_FCP,
			 "0713 SCSI layer issued Device Reset (%d, %llu) "
			 "return x%x\n", tgt_id, lun_id, status);

	/*
	 * We have to clean up i/o as : they may be orphaned by the TMF;
	 * or if the TMF failed, they may be in an indeterminate state.
	 * So, continue on.
	 * We will report success if all the i/o aborts successfully.
	 */
	if (status == SUCCESS)
		status = FUNC5(vport, tgt_id, lun_id,
						LPFC_CTX_LUN);

	return status;
}