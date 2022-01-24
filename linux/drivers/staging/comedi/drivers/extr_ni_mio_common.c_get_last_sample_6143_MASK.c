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
struct ni_private {int /*<<< orphan*/  is_6143; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI6143_AI_FIFO_CTRL_REG ; 
 int /*<<< orphan*/  NI6143_AI_FIFO_DATA_REG ; 
 int /*<<< orphan*/  NI6143_AI_FIFO_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,int) ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned short data;
	unsigned int dl;

	if (!devpriv->is_6143)
		return;

	/* Check if there's a single sample stuck in the FIFO */
	if (FUNC1(dev, NI6143_AI_FIFO_STATUS_REG) & 0x01) {
		/* Get stranded sample into FIFO */
		FUNC2(dev, 0x01, NI6143_AI_FIFO_CTRL_REG);
		dl = FUNC1(dev, NI6143_AI_FIFO_DATA_REG);

		/* This may get the hi/lo data in the wrong order */
		data = (dl >> 16) & 0xffff;
		FUNC0(s, &data, 1);
	}
}