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
struct xd_info {scalar_t__ cleanup_counter; } ;
struct sd_info {scalar_t__ cleanup_counter; } ;
struct rtsx_dev {int /*<<< orphan*/  polling_exit; int /*<<< orphan*/  dev_mutex; TYPE_1__* pci; struct rtsx_chip* chip; } ;
struct ms_info {scalar_t__ cleanup_counter; } ;
struct rtsx_chip {struct ms_info ms_card; struct xd_info xd_card; struct sd_info sd_card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLING_INTERVAL ; 
 int /*<<< orphan*/  RTSX_STAT_DISCONNECT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int delay_use ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(void *__dev)
{
	struct rtsx_dev *dev = __dev;
	struct rtsx_chip *chip = dev->chip;
	struct sd_info *sd_card = &chip->sd_card;
	struct xd_info *xd_card = &chip->xd_card;
	struct ms_info *ms_card = &chip->ms_card;

	sd_card->cleanup_counter = 0;
	xd_card->cleanup_counter = 0;
	ms_card->cleanup_counter = 0;

	/* Wait until SCSI scan finished */
	FUNC10((delay_use + 5) * 1000);

	for (;;) {
		FUNC9(TASK_INTERRUPTIBLE);
		FUNC8(FUNC2(POLLING_INTERVAL));

		/* lock the device pointers */
		FUNC4(&dev->dev_mutex);

		/* if the device has disconnected, we are free to exit */
		if (FUNC6(chip, RTSX_STAT_DISCONNECT)) {
			FUNC1(&dev->pci->dev, "-- rtsx-polling exiting\n");
			FUNC5(&dev->dev_mutex);
			break;
		}

		FUNC5(&dev->dev_mutex);

		FUNC3(chip);

		/* lock the device pointers */
		FUNC4(&dev->dev_mutex);

		FUNC7(chip);

		/* unlock the device pointers */
		FUNC5(&dev->dev_mutex);
	}

	FUNC0(&dev->polling_exit, 0);
}