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
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 int HZ ; 
 unsigned short NI67XX_CAL_STATUS_BUSY ; 
 int /*<<< orphan*/  NI67XX_CAL_STATUS_REG ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned short FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	unsigned short status;
	const int timeout = HZ;
	int i;

	for (i = 0; i < timeout; i++) {
		status = FUNC1(dev, NI67XX_CAL_STATUS_REG);
		if ((status & NI67XX_CAL_STATUS_BUSY) == 0)
			break;
		FUNC3(TASK_INTERRUPTIBLE);
		if (FUNC2(1))
			return -EIO;
	}
	if (i == timeout) {
		FUNC0(dev->class_dev, "timeout\n");
		return -ETIME;
	}
	return 0;
}