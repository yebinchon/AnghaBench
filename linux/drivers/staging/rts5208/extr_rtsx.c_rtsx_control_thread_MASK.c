#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rtsx_dev {int /*<<< orphan*/  control_exit; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  notify; TYPE_2__* pci; int /*<<< orphan*/  cmnd_ready; struct rtsx_chip* chip; } ;
struct rtsx_chip {scalar_t__ max_lun; TYPE_3__* srb; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int result; scalar_t__ sc_data_direction; int /*<<< orphan*/  (* scsi_done ) (TYPE_3__*) ;TYPE_1__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ lun; scalar_t__ id; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 scalar_t__ DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  RTSX_STAT_ABORT ; 
 int /*<<< orphan*/  RTSX_STAT_DISCONNECT ; 
 int /*<<< orphan*/  RTSX_STAT_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC9 (struct rtsx_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(void *__dev)
{
	struct rtsx_dev *dev = __dev;
	struct rtsx_chip *chip = dev->chip;
	struct Scsi_Host *host = FUNC9(dev);

	for (;;) {
		if (FUNC14(&dev->cmnd_ready))
			break;

		/* lock the device pointers */
		FUNC4(&dev->dev_mutex);

		/* if the device has disconnected, we are free to exit */
		if (FUNC6(chip, RTSX_STAT_DISCONNECT)) {
			FUNC3(&dev->pci->dev, "-- rtsx-control exiting\n");
			FUNC5(&dev->dev_mutex);
			break;
		}

		/* lock access to the state */
		FUNC10(host);

		/* has the command aborted ? */
		if (FUNC6(chip, RTSX_STAT_ABORT)) {
			chip->srb->result = DID_ABORT << 16;
			goto skip_for_abort;
		}

		FUNC12(host);

		/* reject the command if the direction indicator
		 * is UNKNOWN
		 */
		if (chip->srb->sc_data_direction == DMA_BIDIRECTIONAL) {
			FUNC2(&dev->pci->dev, "UNKNOWN data direction\n");
			chip->srb->result = DID_ERROR << 16;
		}

		/* reject if target != 0 or if LUN is higher than
		 * the maximum known LUN
		 */
		else if (chip->srb->device->id) {
			FUNC2(&dev->pci->dev, "Bad target number (%d:%d)\n",
				chip->srb->device->id,
				(u8)chip->srb->device->lun);
			chip->srb->result = DID_BAD_TARGET << 16;
		}

		else if (chip->srb->device->lun > chip->max_lun) {
			FUNC2(&dev->pci->dev, "Bad LUN (%d:%d)\n",
				chip->srb->device->id,
				(u8)chip->srb->device->lun);
			chip->srb->result = DID_BAD_TARGET << 16;
		}

		/* we've got a command, let's do it! */
		else {
			FUNC11(chip);
			FUNC7(chip->srb, chip);
		}

		/* lock access to the state */
		FUNC10(host);

		/* did the command already complete because of a disconnect? */
		if (!chip->srb)
			;		/* nothing to do */

		/* indicate that the command is done */
		else if (chip->srb->result != DID_ABORT << 16) {
			chip->srb->scsi_done(chip->srb);
		} else {
skip_for_abort:
			FUNC2(&dev->pci->dev, "scsi command aborted\n");
		}

		if (FUNC6(chip, RTSX_STAT_ABORT)) {
			FUNC0(&dev->notify);

			FUNC8(chip, RTSX_STAT_IDLE);
		}

		/* finished working on this command */
		chip->srb = NULL;
		FUNC12(host);

		/* unlock the device pointers */
		FUNC5(&dev->dev_mutex);
	} /* for (;;) */

	/* notify the exit routine that we're actually exiting now
	 *
	 * complete()/wait_for_completion() is similar to up()/down(),
	 * except that complete() is safe in the case where the structure
	 * is getting deleted in a parallel mode of execution (i.e. just
	 * after the down() -- that's necessary for the thread-shutdown
	 * case.
	 *
	 * complete_and_exit() goes even further than this -- it is safe in
	 * the case that the thread of the caller is going away (not just
	 * the structure) -- this is necessary for the module-remove case.
	 * This is important in preemption kernels, which transfer the flow
	 * of execution immediately upon a complete().
	 */
	FUNC1(&dev->control_exit, 0);
}