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
struct comedi_device {int /*<<< orphan*/  class_dev; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ DT2801_CMD ; 
 scalar_t__ DT2801_DATA ; 
 scalar_t__ DT2801_STATUS ; 
 int /*<<< orphan*/  DT_C_RESET ; 
 int /*<<< orphan*/  DT_C_STOP ; 
 unsigned int DT_S_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	int board_code = 0;
	unsigned int stat;
	int timeout;

	/* pull random data from data port */
	FUNC2(dev->iobase + DT2801_DATA);
	FUNC2(dev->iobase + DT2801_DATA);
	FUNC2(dev->iobase + DT2801_DATA);
	FUNC2(dev->iobase + DT2801_DATA);

	/* dt2801_writecmd(dev,DT_C_STOP); */
	FUNC3(DT_C_STOP, dev->iobase + DT2801_CMD);

	/* dt2801_wait_for_ready(dev); */
	FUNC4(100, 200);
	timeout = 10000;
	do {
		stat = FUNC2(dev->iobase + DT2801_STATUS);
		if (stat & DT_S_READY)
			break;
	} while (timeout--);
	if (!timeout)
		FUNC0(dev->class_dev, "timeout 1 status=0x%02x\n", stat);

	/* dt2801_readdata(dev,&board_code); */

	FUNC3(DT_C_RESET, dev->iobase + DT2801_CMD);
	/* dt2801_writecmd(dev,DT_C_RESET); */

	FUNC4(100, 200);
	timeout = 10000;
	do {
		stat = FUNC2(dev->iobase + DT2801_STATUS);
		if (stat & DT_S_READY)
			break;
	} while (timeout--);
	if (!timeout)
		FUNC0(dev->class_dev, "timeout 2 status=0x%02x\n", stat);

	FUNC1(dev, &board_code);

	return board_code;
}