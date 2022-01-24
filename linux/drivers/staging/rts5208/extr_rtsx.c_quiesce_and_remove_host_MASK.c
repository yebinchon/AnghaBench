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
struct rtsx_dev {int /*<<< orphan*/  dev_mutex; struct rtsx_chip* chip; int /*<<< orphan*/  scanning_done; int /*<<< orphan*/  delay_wait; } ;
struct rtsx_chip {TYPE_1__* srb; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int result; int /*<<< orphan*/  (* scsi_done ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  RTSX_STAT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct rtsx_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct rtsx_dev *dev)
{
	struct Scsi_Host *host = FUNC3(dev);
	struct rtsx_chip *chip = dev->chip;

	/*
	 * Prevent new transfers, stop the current command, and
	 * interrupt a SCSI-scan or device-reset delay
	 */
	FUNC0(&dev->dev_mutex);
	FUNC4(host);
	FUNC2(chip, RTSX_STAT_DISCONNECT);
	FUNC6(host);
	FUNC1(&dev->dev_mutex);
	FUNC10(&dev->delay_wait);
	FUNC8(&dev->scanning_done);

	/* Wait some time to let other threads exist */
	FUNC9(100);

	/*
	 * queuecommand won't accept any new commands and the control
	 * thread won't execute a previously-queued command.  If there
	 * is such a command pending, complete it with an error.
	 */
	FUNC0(&dev->dev_mutex);
	if (chip->srb) {
		chip->srb->result = DID_NO_CONNECT << 16;
		FUNC4(host);
		chip->srb->scsi_done(dev->chip->srb);
		chip->srb = NULL;
		FUNC6(host);
	}
	FUNC1(&dev->dev_mutex);

	/* Now we own no commands so it's safe to remove the SCSI host */
	FUNC5(host);
}