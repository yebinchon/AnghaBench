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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct allegro_dev *dev)
{
	unsigned long timeout;
	unsigned int status;

	timeout = jiffies + FUNC1(100);
	while (FUNC2(dev->regmap, AL5_MCU_STA, &status) == 0 &&
	       status != AL5_MCU_STA_SLEEP) {
		if (FUNC3(jiffies, timeout))
			return -ETIMEDOUT;
		FUNC0();
	}

	return 0;
}