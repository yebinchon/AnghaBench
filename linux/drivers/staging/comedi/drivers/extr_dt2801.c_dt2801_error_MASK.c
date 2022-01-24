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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, int stat)
{
	if (stat < 0) {
		if (stat == -ETIME)
			FUNC0(dev->class_dev, "timeout\n");
		else
			FUNC0(dev->class_dev, "error %d\n", stat);
		return stat;
	}
	FUNC0(dev->class_dev, "error status 0x%02x, resetting...\n", stat);

	FUNC1(dev);
	FUNC1(dev);

	return -EIO;
}