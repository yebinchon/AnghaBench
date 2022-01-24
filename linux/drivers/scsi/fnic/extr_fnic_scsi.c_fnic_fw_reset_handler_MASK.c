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
struct vnic_wq_copy {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_resets; } ;
struct TYPE_5__ {int /*<<< orphan*/  active_fw_reqs; int /*<<< orphan*/  max_fw_reqs; } ;
struct TYPE_7__ {TYPE_2__ reset_stats; TYPE_1__ fw_stats; } ;
struct fnic {scalar_t__* wq_copy_desc_low; TYPE_4__* lport; TYPE_3__ fnic_stats; int /*<<< orphan*/ * wq_copy_lock; int /*<<< orphan*/  in_flight; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  frame_queue; struct vnic_wq_copy* wq_copy; } ;
struct TYPE_8__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FNIC_FLAGS_FWRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnic_wq_copy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (struct vnic_wq_copy*) ; 

int FUNC15(struct fnic *fnic)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	int ret = 0;
	unsigned long flags;

	/* indicate fwreset to io path */
	FUNC7(fnic, FNIC_FLAGS_FWRESET);

	FUNC11(&fnic->frame_queue);
	FUNC11(&fnic->tx_queue);

	/* wait for io cmpl */
	while (FUNC4(&fnic->in_flight))
		FUNC10(FUNC9(1));

	FUNC12(&fnic->wq_copy_lock[0], flags);

	if (FUNC14(wq) <= fnic->wq_copy_desc_low[0])
		FUNC8(fnic, wq);

	if (!FUNC14(wq))
		ret = -EAGAIN;
	else {
		FUNC6(wq, SCSI_NO_TAG);
		FUNC1(&fnic->fnic_stats.fw_stats.active_fw_reqs);
		if (FUNC2(&fnic->fnic_stats.fw_stats.active_fw_reqs) >
			  FUNC2(&fnic->fnic_stats.fw_stats.max_fw_reqs))
			FUNC3(&fnic->fnic_stats.fw_stats.max_fw_reqs,
				FUNC2(
				  &fnic->fnic_stats.fw_stats.active_fw_reqs));
	}

	FUNC13(&fnic->wq_copy_lock[0], flags);

	if (!ret) {
		FUNC1(&fnic->fnic_stats.reset_stats.fw_resets);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "Issued fw reset\n");
	} else {
		FUNC5(fnic, FNIC_FLAGS_FWRESET);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "Failed to issue fw reset\n");
	}

	return ret;
}