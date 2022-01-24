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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vnic_wq_copy {int dummy; } ;
struct misc_stats {int /*<<< orphan*/  abts_cpwq_alloc_failures; } ;
struct fnic_io_req {int /*<<< orphan*/  port_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  active_fw_reqs; int /*<<< orphan*/  max_fw_reqs; } ;
struct TYPE_8__ {TYPE_3__ fw_stats; struct misc_stats misc_stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  ed_tov; int /*<<< orphan*/  ra_tov; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int /*<<< orphan*/  in_flight; int /*<<< orphan*/ * wq_copy_lock; TYPE_4__ fnic_stats; TYPE_2__ config; TYPE_1__* lport; struct vnic_wq_copy* wq_copy; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_5__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNIC_FLAGS_IO_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int FNIC_TAG_ABORT ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnic_wq_copy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct vnic_wq_copy*) ; 

__attribute__((used)) static inline int FUNC13(struct fnic *fnic, int tag,
					  u32 task_req, u8 *fc_lun,
					  struct fnic_io_req *io_req)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	struct Scsi_Host *host = fnic->lport->host;
	struct misc_stats *misc_stats = &fnic->fnic_stats.misc_stats;
	unsigned long flags;

	FUNC9(host->host_lock, flags);
	if (FUNC11(FUNC6(fnic,
						FNIC_FLAGS_IO_BLOCKED))) {
		FUNC10(host->host_lock, flags);
		return 1;
	} else
		FUNC5(&fnic->in_flight);
	FUNC10(host->host_lock, flags);

	FUNC9(&fnic->wq_copy_lock[0], flags);

	if (FUNC12(wq) <= fnic->wq_copy_desc_low[0])
		FUNC8(fnic, wq);

	if (!FUNC12(wq)) {
		FUNC10(&fnic->wq_copy_lock[0], flags);
		FUNC4(&fnic->in_flight);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			"fnic_queue_abort_io_req: failure: no descriptors\n");
		FUNC1(&misc_stats->abts_cpwq_alloc_failures);
		return 1;
	}
	FUNC7(wq, tag | FNIC_TAG_ABORT,
				     0, task_req, tag, fc_lun, io_req->port_id,
				     fnic->config.ra_tov, fnic->config.ed_tov);

	FUNC1(&fnic->fnic_stats.fw_stats.active_fw_reqs);
	if (FUNC2(&fnic->fnic_stats.fw_stats.active_fw_reqs) >
		  FUNC2(&fnic->fnic_stats.fw_stats.max_fw_reqs))
		FUNC3(&fnic->fnic_stats.fw_stats.max_fw_reqs,
		  FUNC2(&fnic->fnic_stats.fw_stats.active_fw_reqs));

	FUNC10(&fnic->wq_copy_lock[0], flags);
	FUNC4(&fnic->in_flight);

	return 0;
}