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
struct comedi_device {int /*<<< orphan*/  class_dev; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  AREF_GROUND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 unsigned int FS_ADC_HEMPTY ; 
 scalar_t__ LAS0_ADC ; 
 scalar_t__ LAS0_ADC_CONVERSION ; 
 scalar_t__ LAS0_ADC_FIFO_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev)
{
	unsigned int chanspec = FUNC0(0, 0, AREF_GROUND);
	unsigned int i;
	static const unsigned int limit = 0x2000;
	unsigned int fifo_size = 0;

	FUNC5(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
	FUNC3(dev, 1, &chanspec);
	/* ADC conversion trigger source: SOFTWARE */
	FUNC5(0, dev->mmio + LAS0_ADC_CONVERSION);
	/* convert  samples */
	for (i = 0; i < limit; ++i) {
		unsigned int fifo_status;
		/* trigger conversion */
		FUNC6(0, dev->mmio + LAS0_ADC);
		FUNC4(1, 1000);
		fifo_status = FUNC2(dev->mmio + LAS0_ADC);
		if ((fifo_status & FS_ADC_HEMPTY) == 0) {
			fifo_size = 2 * i;
			break;
		}
	}
	if (i == limit) {
		FUNC1(dev->class_dev, "failed to probe fifo size.\n");
		return -EIO;
	}
	FUNC5(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
	if (fifo_size != 0x400 && fifo_size != 0x2000) {
		FUNC1(dev->class_dev,
			 "unexpected fifo size of %i, expected 1024 or 8192.\n",
			 fifo_size);
		return -EIO;
	}
	return fifo_size;
}