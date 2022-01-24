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
struct us_data {int fflags; scalar_t__ max_lun; int /*<<< orphan*/  dev_mutex; struct scsi_cmnd* srb; int /*<<< orphan*/  dflags; int /*<<< orphan*/  notify; int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/  (* proto_handler ) (struct scsi_cmnd*,struct us_data*) ;int /*<<< orphan*/  cmnd_ready; } ;
struct scsi_cmnd {int result; scalar_t__ sc_data_direction; scalar_t__* cmnd; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ lun; scalar_t__ id; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 scalar_t__ DMA_BIDIRECTIONAL ; 
 scalar_t__ INQUIRY ; 
 int SAM_STAT_GOOD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  US_FLIDX_ABORTING ; 
 int /*<<< orphan*/  US_FLIDX_TIMED_OUT ; 
 int US_FL_FIX_INQUIRY ; 
 int US_FL_SCM_MULT_TARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct us_data*,unsigned char*,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*,struct us_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC15 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct us_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct us_data*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(void * __us)
{
	struct us_data *us = (struct us_data *)__us;
	struct Scsi_Host *host = FUNC15(us);
	struct scsi_cmnd *srb;

	for (;;) {
		FUNC17(us, "*** thread sleeping\n");
		if (FUNC19(&us->cmnd_ready))
			break;

		FUNC17(us, "*** thread awakened\n");

		/* lock the device pointers */
		FUNC6(&(us->dev_mutex));

		/* lock access to the state */
		FUNC9(host);

		/* When we are called with no command pending, we're done */
		srb = us->srb;
		if (srb == NULL) {
			FUNC10(host);
			FUNC7(&us->dev_mutex);
			FUNC17(us, "-- exiting\n");
			break;
		}

		/* has the command timed out *already* ? */
		if (FUNC14(US_FLIDX_TIMED_OUT, &us->dflags)) {
			srb->result = DID_ABORT << 16;
			goto SkipForAbort;
		}

		FUNC10(host);

		/*
		 * reject the command if the direction indicator
		 * is UNKNOWN
		 */
		if (srb->sc_data_direction == DMA_BIDIRECTIONAL) {
			FUNC17(us, "UNKNOWN data direction\n");
			srb->result = DID_ERROR << 16;
		}

		/*
		 * reject if target != 0 or if LUN is higher than
		 * the maximum known LUN
		 */
		else if (srb->device->id &&
				!(us->fflags & US_FL_SCM_MULT_TARG)) {
			FUNC17(us, "Bad target number (%d:%llu)\n",
				     srb->device->id,
				     srb->device->lun);
			srb->result = DID_BAD_TARGET << 16;
		}

		else if (srb->device->lun > us->max_lun) {
			FUNC17(us, "Bad LUN (%d:%llu)\n",
				     srb->device->id,
				     srb->device->lun);
			srb->result = DID_BAD_TARGET << 16;
		}

		/*
		 * Handle those devices which need us to fake
		 * their inquiry data
		 */
		else if ((srb->cmnd[0] == INQUIRY) &&
			    (us->fflags & US_FL_FIX_INQUIRY)) {
			unsigned char data_ptr[36] = {
			    0x00, 0x80, 0x02, 0x02,
			    0x1F, 0x00, 0x00, 0x00};

			FUNC17(us, "Faking INQUIRY command\n");
			FUNC4(us, data_ptr, 36);
			srb->result = SAM_STAT_GOOD;
		}

		/* we've got a command, let's do it! */
		else {
			FUNC0(FUNC18(us, srb));
			us->proto_handler(srb, us);
			FUNC16(us->pusb_dev);
		}

		/* lock access to the state */
		FUNC9(host);

		/* was the command aborted? */
		if (srb->result == DID_ABORT << 16) {
SkipForAbort:
			FUNC17(us, "scsi command aborted\n");
			srb = NULL;	/* Don't call srb->scsi_done() */
		}

		/*
		 * If an abort request was received we need to signal that
		 * the abort has finished.  The proper test for this is
		 * the TIMED_OUT flag, not srb->result == DID_ABORT, because
		 * the timeout might have occurred after the command had
		 * already completed with a different result code.
		 */
		if (FUNC14(US_FLIDX_TIMED_OUT, &us->dflags)) {
			FUNC3(&(us->notify));

			/* Allow USB transfers to resume */
			FUNC2(US_FLIDX_ABORTING, &us->dflags);
			FUNC2(US_FLIDX_TIMED_OUT, &us->dflags);
		}

		/* finished working on this command */
		us->srb = NULL;
		FUNC10(host);

		/* unlock the device pointers */
		FUNC7(&us->dev_mutex);

		/* now that the locks are released, notify the SCSI core */
		if (srb) {
			FUNC17(us, "scsi cmd done, result=0x%x\n",
					srb->result);
			srb->scsi_done(srb);
		}
	} /* for (;;) */

	/* Wait until we are told to stop */
	for (;;) {
		FUNC11(TASK_INTERRUPTIBLE);
		if (FUNC5())
			break;
		FUNC8();
	}
	FUNC1(TASK_RUNNING);
	return 0;
}