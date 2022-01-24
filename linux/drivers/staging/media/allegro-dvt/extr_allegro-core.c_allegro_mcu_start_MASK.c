#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct allegro_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL5_MCU_STA ; 
 unsigned int AL5_MCU_STA_SLEEP ; 
 int /*<<< orphan*/  AL5_MCU_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct allegro_dev *dev)
{
	unsigned long timeout;
	unsigned int status;
	int err;

	err = FUNC4(dev->regmap, AL5_MCU_WAKEUP, FUNC0(0));
	if (err)
		return err;

	timeout = jiffies + FUNC2(100);
	while (FUNC3(dev->regmap, AL5_MCU_STA, &status) == 0 &&
	       status == AL5_MCU_STA_SLEEP) {
		if (FUNC5(jiffies, timeout))
			return -ETIMEDOUT;
		FUNC1();
	}

	err = FUNC4(dev->regmap, AL5_MCU_WAKEUP, 0);
	if (err)
		return err;

	return 0;
}