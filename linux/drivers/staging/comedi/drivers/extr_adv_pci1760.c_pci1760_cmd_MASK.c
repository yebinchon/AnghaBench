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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned char PCI1760_CMD_CLR_IMB2 ; 
 int PCI1760_CMD_RETRIES ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int FUNC2 (struct comedi_device*,unsigned char,unsigned short) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
		       unsigned char cmd, unsigned short val)
{
	int repeats;
	int ret;

	/* send PCI1760_CMD_CLR_IMB2 between identical commands */
	if (FUNC1(dev->iobase + FUNC0(2)) == cmd) {
		ret = FUNC2(dev, PCI1760_CMD_CLR_IMB2, 0);
		if (ret < 0) {
			/* timeout? try it once more */
			ret = FUNC2(dev, PCI1760_CMD_CLR_IMB2, 0);
			if (ret < 0)
				return -ETIMEDOUT;
		}
	}

	/* datasheet says to keep retrying the command */
	for (repeats = 0; repeats < PCI1760_CMD_RETRIES; repeats++) {
		ret = FUNC2(dev, cmd, val);
		if (ret >= 0)
			return ret;
	}

	/* command failed! */
	return -ETIMEDOUT;
}