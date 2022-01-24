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
typedef  int u32 ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ host_scribble; TYPE_1__* device; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; } ;
struct bfad_ioim_s {int dummy; } ;
struct bfad_im_port_s {TYPE_2__* shost; struct bfad_s* bfad; } ;
struct bfa_ioim_s {int /*<<< orphan*/  iotag; struct bfad_ioim_s* dio; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_no; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FAILED ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC8(struct scsi_cmnd *cmnd)
{
	struct Scsi_Host *shost = cmnd->device->host;
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s         *bfad = im_port->bfad;
	struct bfa_ioim_s *hal_io;
	unsigned long   flags;
	u32        timeout;
	int             rc = FAILED;

	FUNC5(&bfad->bfad_lock, flags);
	hal_io = (struct bfa_ioim_s *) cmnd->host_scribble;
	if (!hal_io) {
		/* IO has been completed, return success */
		rc = SUCCESS;
		goto out;
	}
	if (hal_io->dio != (struct bfad_ioim_s *) cmnd) {
		rc = FAILED;
		goto out;
	}

	FUNC2(bfad, hal_io->iotag);
	FUNC0(KERN_INFO, bfad, bfa_log_level,
		"scsi%d: abort cmnd %p iotag %x\n",
		im_port->shost->host_no, cmnd, hal_io->iotag);
	(void) FUNC1(hal_io);
	FUNC6(&bfad->bfad_lock, flags);

	/* Need to wait until the command get aborted */
	timeout = 10;
	while ((struct bfa_ioim_s *) cmnd->host_scribble == hal_io) {
		FUNC4(TASK_UNINTERRUPTIBLE);
		FUNC3(timeout);
		if (timeout < 4 * HZ)
			timeout *= 2;
	}

	cmnd->scsi_done(cmnd);
	FUNC2(bfad, hal_io->iotag);
	FUNC0(KERN_INFO, bfad, bfa_log_level,
		"scsi%d: complete abort 0x%p iotag 0x%x\n",
		im_port->shost->host_no, cmnd, hal_io->iotag);
	return SUCCESS;
out:
	FUNC6(&bfad->bfad_lock, flags);
	return rc;
}