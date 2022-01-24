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
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct rtsx_dev {int /*<<< orphan*/  cmnd_ready; TYPE_1__* pci; struct rtsx_chip* chip; } ;
struct rtsx_chip {struct scsi_cmnd* srb; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  RTSX_STAT_DISCONNECT ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct rtsx_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *srb,
			    void (*done)(struct scsi_cmnd *))
{
	struct rtsx_dev *dev = FUNC3(srb->device->host);
	struct rtsx_chip *chip = dev->chip;

	/* check for state-transition errors */
	if (chip->srb) {
		FUNC1(&dev->pci->dev, "Error: chip->srb = %p\n",
			chip->srb);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	/* fail the command if we are disconnecting */
	if (FUNC4(chip, RTSX_STAT_DISCONNECT)) {
		FUNC2(&dev->pci->dev, "Fail command during disconnect\n");
		srb->result = DID_NO_CONNECT << 16;
		done(srb);
		return 0;
	}

	/* enqueue the command and wake up the control thread */
	srb->scsi_done = done;
	chip->srb = srb;
	FUNC0(&dev->cmnd_ready);

	return 0;
}