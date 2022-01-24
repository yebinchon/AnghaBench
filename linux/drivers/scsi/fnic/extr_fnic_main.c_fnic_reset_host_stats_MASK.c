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
struct fnic {int /*<<< orphan*/  stats_reset_time; TYPE_1__* lport; int /*<<< orphan*/  fnic_lock; int /*<<< orphan*/  vdev; } ;
struct fc_lport {int dummy; } ;
struct fc_host_statistics {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,struct fc_host_statistics*) ; 
 struct fc_host_statistics* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct fnic* FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_host_statistics*,int /*<<< orphan*/ ,int) ; 
 struct fc_lport* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct Scsi_Host *host)
{
	int ret;
	struct fc_lport *lp = FUNC5(host);
	struct fnic *fnic = FUNC3(lp);
	struct fc_host_statistics *stats;
	unsigned long flags;

	/* dump current stats, before clearing them */
	stats = FUNC2(host);
	FUNC1(host, stats);

	FUNC6(&fnic->fnic_lock, flags);
	ret = FUNC8(fnic->vdev);
	FUNC7(&fnic->fnic_lock, flags);

	if (ret) {
		FUNC0(KERN_DEBUG, fnic->lport->host,
				"fnic: Reset vnic stats failed"
				" 0x%x", ret);
		return;
	}
	fnic->stats_reset_time = jiffies;
	FUNC4(stats, 0, sizeof(*stats));

	return;
}