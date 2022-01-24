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
struct rtsx_dev {int /*<<< orphan*/  scanning_done; TYPE_1__* pci; int /*<<< orphan*/  delay_wait; struct rtsx_chip* chip; } ;
struct rtsx_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_DRIVER_NAME ; 
 int HZ ; 
 int /*<<< orphan*/  RTSX_STAT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int delay_use ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void *__dev)
{
	struct rtsx_dev *dev = __dev;
	struct rtsx_chip *chip = dev->chip;

	/* Wait for the timeout to expire or for a disconnect */
	if (delay_use > 0) {
		FUNC1(&dev->pci->dev,
			 "%s: waiting for device to settle before scanning\n",
			 CR_DRIVER_NAME);
		FUNC5
			(dev->delay_wait,
			 FUNC2(chip, RTSX_STAT_DISCONNECT),
			 delay_use * HZ);
	}

	/* If the device is still connected, perform the scanning */
	if (!FUNC2(chip, RTSX_STAT_DISCONNECT)) {
		FUNC4(FUNC3(dev));
		FUNC1(&dev->pci->dev, "%s: device scan complete\n",
			 CR_DRIVER_NAME);

		/* Should we unbind if no devices were detected? */
	}

	FUNC0(&dev->scanning_done, 0);
}