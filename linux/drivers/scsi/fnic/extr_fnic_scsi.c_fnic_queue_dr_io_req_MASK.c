#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vnic_wq_copy {int dummy; } ;
struct scsi_lun {int /*<<< orphan*/  scsi_lun; } ;
struct scsi_cmnd {TYPE_3__* request; TYPE_2__* device; } ;
struct misc_stats {int /*<<< orphan*/  devrst_cpwq_alloc_failures; } ;
struct fnic_io_req {int /*<<< orphan*/  port_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  active_fw_reqs; int /*<<< orphan*/  max_fw_reqs; } ;
struct TYPE_12__ {TYPE_5__ fw_stats; struct misc_stats misc_stats; } ;
struct TYPE_10__ {int /*<<< orphan*/  ed_tov; int /*<<< orphan*/  ra_tov; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int /*<<< orphan*/  in_flight; int /*<<< orphan*/ * wq_copy_lock; TYPE_6__ fnic_stats; TYPE_4__ config; TYPE_1__* lport; struct vnic_wq_copy* wq_copy; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_9__ {int tag; } ;
struct TYPE_8__ {int /*<<< orphan*/  lun; } ;
struct TYPE_7__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FAILED ; 
 int /*<<< orphan*/  FCPIO_ITMF_LUN_RESET ; 
 int /*<<< orphan*/  FNIC_FLAGS_IO_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int FNIC_TAG_DEV_RST ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnic_wq_copy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct vnic_wq_copy*) ; 

__attribute__((used)) static inline int FUNC14(struct fnic *fnic,
				       struct scsi_cmnd *sc,
				       struct fnic_io_req *io_req)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	struct Scsi_Host *host = fnic->lport->host;
	struct misc_stats *misc_stats = &fnic->fnic_stats.misc_stats;
	struct scsi_lun fc_lun;
	int ret = 0;
	unsigned long intr_flags;

	FUNC10(host->host_lock, intr_flags);
	if (FUNC12(FUNC6(fnic,
						FNIC_FLAGS_IO_BLOCKED))) {
		FUNC11(host->host_lock, intr_flags);
		return FAILED;
	} else
		FUNC5(&fnic->in_flight);
	FUNC11(host->host_lock, intr_flags);

	FUNC10(&fnic->wq_copy_lock[0], intr_flags);

	if (FUNC13(wq) <= fnic->wq_copy_desc_low[0])
		FUNC8(fnic, wq);

	if (!FUNC13(wq)) {
		FUNC0(KERN_DEBUG, fnic->lport->host,
			  "queue_dr_io_req failure - no descriptors\n");
		FUNC1(&misc_stats->devrst_cpwq_alloc_failures);
		ret = -EAGAIN;
		goto lr_io_req_end;
	}

	/* fill in the lun info */
	FUNC9(sc->device->lun, &fc_lun);

	FUNC7(wq, sc->request->tag | FNIC_TAG_DEV_RST,
				     0, FCPIO_ITMF_LUN_RESET, SCSI_NO_TAG,
				     fc_lun.scsi_lun, io_req->port_id,
				     fnic->config.ra_tov, fnic->config.ed_tov);

	FUNC1(&fnic->fnic_stats.fw_stats.active_fw_reqs);
	if (FUNC2(&fnic->fnic_stats.fw_stats.active_fw_reqs) >
		  FUNC2(&fnic->fnic_stats.fw_stats.max_fw_reqs))
		FUNC3(&fnic->fnic_stats.fw_stats.max_fw_reqs,
		  FUNC2(&fnic->fnic_stats.fw_stats.active_fw_reqs));

lr_io_req_end:
	FUNC11(&fnic->wq_copy_lock[0], intr_flags);
	FUNC4(&fnic->in_flight);

	return ret;
}