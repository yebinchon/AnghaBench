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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fnic {int internal_reset_inprogress; int /*<<< orphan*/  fnic_lock; TYPE_2__* lport; } ;
struct fc_lport {scalar_t__ state; scalar_t__ link_up; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 unsigned long FNIC_HOST_RESET_SETTLE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ LPORT_ST_READY ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (struct Scsi_Host*) ; 
 unsigned long jiffies ; 
 struct fnic* FUNC2 (struct fc_lport*) ; 
 struct fc_lport* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

int FUNC8(struct scsi_cmnd *sc)
{
	int ret;
	unsigned long wait_host_tmo;
	struct Scsi_Host *shost = sc->device->host;
	struct fc_lport *lp = FUNC3(shost);
	struct fnic *fnic = FUNC2(lp);
	unsigned long flags;

	FUNC4(&fnic->fnic_lock, flags);
	if (fnic->internal_reset_inprogress == 0) {
		fnic->internal_reset_inprogress = 1;
	} else {
		FUNC5(&fnic->fnic_lock, flags);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			"host reset in progress skipping another host reset\n");
		return SUCCESS;
	}
	FUNC5(&fnic->fnic_lock, flags);

	/*
	 * If fnic_reset is successful, wait for fabric login to complete
	 * scsi-ml tries to send a TUR to every device if host reset is
	 * successful, so before returning to scsi, fabric should be up
	 */
	ret = (FUNC1(shost) == 0) ? SUCCESS : FAILED;
	if (ret == SUCCESS) {
		wait_host_tmo = jiffies + FNIC_HOST_RESET_SETTLE_TIME * HZ;
		ret = FAILED;
		while (FUNC7(jiffies, wait_host_tmo)) {
			if ((lp->state == LPORT_ST_READY) &&
			    (lp->link_up)) {
				ret = SUCCESS;
				break;
			}
			FUNC6(1);
		}
	}

	FUNC4(&fnic->fnic_lock, flags);
	fnic->internal_reset_inprogress = 0;
	FUNC5(&fnic->fnic_lock, flags);
	return ret;
}