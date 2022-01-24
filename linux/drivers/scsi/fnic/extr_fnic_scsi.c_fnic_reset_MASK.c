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
struct reset_stats {int /*<<< orphan*/  fnic_reset_failures; int /*<<< orphan*/  fnic_reset_completions; int /*<<< orphan*/  fnic_resets; } ;
struct TYPE_3__ {struct reset_stats reset_stats; } ;
struct fnic {TYPE_2__* lport; TYPE_1__ fnic_stats; } ;
struct fc_lport {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fc_lport*) ; 
 struct fnic* FUNC3 (struct fc_lport*) ; 
 struct fc_lport* FUNC4 (struct Scsi_Host*) ; 

int FUNC5(struct Scsi_Host *shost)
{
	struct fc_lport *lp;
	struct fnic *fnic;
	int ret = 0;
	struct reset_stats *reset_stats;

	lp = FUNC4(shost);
	fnic = FUNC3(lp);
	reset_stats = &fnic->fnic_stats.reset_stats;

	FUNC0(KERN_DEBUG, fnic->lport->host,
		      "fnic_reset called\n");

	FUNC1(&reset_stats->fnic_resets);

	/*
	 * Reset local port, this will clean up libFC exchanges,
	 * reset remote port sessions, and if link is up, begin flogi
	 */
	ret = FUNC2(lp);

	FUNC0(KERN_DEBUG, fnic->lport->host,
		      "Returning from fnic reset %s\n",
		      (ret == 0) ?
		      "SUCCESS" : "FAILED");

	if (ret == 0)
		FUNC1(&reset_stats->fnic_reset_completions);
	else
		FUNC1(&reset_stats->fnic_reset_failures);

	return ret;
}