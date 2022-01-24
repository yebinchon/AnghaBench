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
struct srp_rport {scalar_t__ fast_io_fail_tmo; scalar_t__ dev_loss_tmo; } ;
struct srp_internal {TYPE_1__* f; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; struct Scsi_Host* host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_2__ {scalar_t__ reset_timer_if_blocked; } ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scsi_device*) ; 
 struct srp_rport* FUNC3 (struct Scsi_Host*) ; 
 struct srp_internal* FUNC4 (int /*<<< orphan*/ ) ; 

enum blk_eh_timer_return FUNC5(struct scsi_cmnd *scmd)
{
	struct scsi_device *sdev = scmd->device;
	struct Scsi_Host *shost = sdev->host;
	struct srp_internal *i = FUNC4(shost->transportt);
	struct srp_rport *rport = FUNC3(shost);

	FUNC1("timeout for sdev %s\n", FUNC0(&sdev->sdev_gendev));
	return rport && rport->fast_io_fail_tmo < 0 &&
		rport->dev_loss_tmo < 0 &&
		i->f->reset_timer_if_blocked && FUNC2(sdev) ?
		BLK_EH_RESET_TIMER : BLK_EH_DONE;
}