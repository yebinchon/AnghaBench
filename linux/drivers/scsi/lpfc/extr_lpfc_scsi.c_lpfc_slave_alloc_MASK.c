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
typedef  int uint32_t ;
struct scsi_device {struct lpfc_device_data* hostdata; int /*<<< orphan*/  lun; TYPE_1__* host; } ;
struct lpfc_vport {int cfg_lun_queue_depth; int /*<<< orphan*/  fc_portname; struct lpfc_hba* phba; } ;
struct TYPE_4__ {int /*<<< orphan*/  wwn; } ;
struct lpfc_name {TYPE_2__ u; } ;
struct lpfc_hba {scalar_t__ sli_rev; int total_scsi_bufs; int cfg_hba_queue_depth; int /*<<< orphan*/  sdev_cnt; int /*<<< orphan*/  devicelock; int /*<<< orphan*/  luns; int /*<<< orphan*/  cfg_XLanePriority; scalar_t__ cfg_fof; } ;
struct lpfc_device_data {int available; struct lpfc_device_data* rport_data; int /*<<< orphan*/  listentry; } ;
struct fc_rport {struct lpfc_device_data* dd_data; int /*<<< orphan*/  port_name; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int LPFC_DISC_IOCB_BUFF_COUNT ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 struct lpfc_device_data* FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct lpfc_name*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lpfc_device_data* FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ *,struct lpfc_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct lpfc_vport*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fc_rport* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct scsi_device *sdev)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	struct fc_rport *rport = FUNC10(FUNC7(sdev));
	uint32_t total = 0;
	uint32_t num_to_alloc = 0;
	int num_allocated = 0;
	uint32_t sdev_cnt;
	struct lpfc_device_data *device_data;
	unsigned long flags;
	struct lpfc_name target_wwpn;

	if (!rport || FUNC2(rport))
		return -ENXIO;

	if (phba->cfg_fof) {

		/*
		 * Check to see if the device data structure for the lun
		 * exists.  If not, create one.
		 */

		FUNC11(rport->port_name, target_wwpn.u.wwn);
		FUNC8(&phba->devicelock, flags);
		device_data = FUNC0(phba,
						     &phba->luns,
						     &vport->fc_portname,
						     &target_wwpn,
						     sdev->lun);
		if (!device_data) {
			FUNC9(&phba->devicelock, flags);
			device_data = FUNC4(phba,
							&vport->fc_portname,
							&target_wwpn,
							sdev->lun,
							phba->cfg_XLanePriority,
							true);
			if (!device_data)
				return -ENOMEM;
			FUNC8(&phba->devicelock, flags);
			FUNC3(&device_data->listentry, &phba->luns);
		}
		device_data->rport_data = rport->dd_data;
		device_data->available = true;
		FUNC9(&phba->devicelock, flags);
		sdev->hostdata = device_data;
	} else {
		sdev->hostdata = rport->dd_data;
	}
	sdev_cnt = FUNC1(&phba->sdev_cnt);

	/* For SLI4, all IO buffers are pre-allocated */
	if (phba->sli_rev == LPFC_SLI_REV4)
		return 0;

	/* This code path is now ONLY for SLI3 adapters */

	/*
	 * Populate the cmds_per_lun count scsi_bufs into this host's globally
	 * available list of scsi buffers.  Don't allocate more than the
	 * HBA limit conveyed to the midlayer via the host structure.  The
	 * formula accounts for the lun_queue_depth + error handlers + 1
	 * extra.  This list of scsi bufs exists for the lifetime of the driver.
	 */
	total = phba->total_scsi_bufs;
	num_to_alloc = vport->cfg_lun_queue_depth + 2;

	/* If allocated buffers are enough do nothing */
	if ((sdev_cnt * (vport->cfg_lun_queue_depth + 2)) < total)
		return 0;

	/* Allow some exchanges to be available always to complete discovery */
	if (total >= phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
		FUNC6(vport, KERN_WARNING, LOG_FCP,
				 "0704 At limitation of %d preallocated "
				 "command buffers\n", total);
		return 0;
	/* Allow some exchanges to be available always to complete discovery */
	} else if (total + num_to_alloc >
		phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
		FUNC6(vport, KERN_WARNING, LOG_FCP,
				 "0705 Allocation request of %d "
				 "command buffers will exceed max of %d.  "
				 "Reducing allocation request to %d.\n",
				 num_to_alloc, phba->cfg_hba_queue_depth,
				 (phba->cfg_hba_queue_depth - total));
		num_to_alloc = phba->cfg_hba_queue_depth - total;
	}
	num_allocated = FUNC5(vport, num_to_alloc);
	if (num_to_alloc != num_allocated) {
			FUNC6(vport, KERN_ERR, LOG_FCP,
					 "0708 Allocation request of %d "
					 "command buffers did not succeed.  "
					 "Allocated %d buffers.\n",
					 num_to_alloc, num_allocated);
	}
	if (num_allocated > 0)
		phba->total_scsi_bufs += num_allocated;
	return 0;
}