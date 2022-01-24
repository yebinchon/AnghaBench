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
struct scsi_cmnd {int result; scalar_t__ retries; TYPE_2__* request; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct hpsa_scsi_dev_t {scalar_t__ in_reset; scalar_t__ removed; } ;
struct ctlr_info {scalar_t__ acciopath_status; } ;
struct Scsi_Host {int dummy; } ;
struct CommandList {int dummy; } ;
struct TYPE_4__ {scalar_t__ tag; } ;
struct TYPE_3__ {struct hpsa_scsi_dev_t* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DID_NO_CONNECT ; 
 int SCSI_MLQUEUE_DEVICE_BUSY ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct CommandList* FUNC2 (struct ctlr_info*,struct scsi_cmnd*) ; 
 int FUNC3 (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*,struct hpsa_scsi_dev_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctlr_info*,struct CommandList*) ; 
 int FUNC5 (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ctlr_info*) ; 
 struct ctlr_info* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct Scsi_Host *sh, struct scsi_cmnd *cmd)
{
	struct ctlr_info *h;
	struct hpsa_scsi_dev_t *dev;
	struct CommandList *c;
	int rc = 0;

	/* Get the ptr to our adapter structure out of cmd->host. */
	h = FUNC8(cmd->device);

	FUNC0(cmd->request->tag < 0);

	dev = cmd->device->hostdata;
	if (!dev) {
		cmd->result = DID_NO_CONNECT << 16;
		cmd->scsi_done(cmd);
		return 0;
	}

	if (dev->removed) {
		cmd->result = DID_NO_CONNECT << 16;
		cmd->scsi_done(cmd);
		return 0;
	}

	if (FUNC12(FUNC7(h))) {
		cmd->result = DID_NO_CONNECT << 16;
		cmd->scsi_done(cmd);
		return 0;
	}

	if (dev->in_reset)
		return SCSI_MLQUEUE_DEVICE_BUSY;

	c = FUNC2(h, cmd);
	if (c == NULL)
		return SCSI_MLQUEUE_DEVICE_BUSY;

	/*
	 * This is necessary because the SML doesn't zero out this field during
	 * error recovery.
	 */
	cmd->result = 0;

	/*
	 * Call alternate submit routine for I/O accelerated commands.
	 * Retries always go down the normal I/O path.
	 */
	if (FUNC6(cmd->retries == 0 &&
			!FUNC1(cmd->request) &&
			h->acciopath_status)) {
		rc = FUNC5(h, c, cmd);
		if (rc == 0)
			return 0;
		if (rc == SCSI_MLQUEUE_HOST_BUSY) {
			FUNC4(h, c);
			return SCSI_MLQUEUE_HOST_BUSY;
		}
	}
	return FUNC3(h, c, cmd, dev);
}