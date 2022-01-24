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
struct ni_private {int /*<<< orphan*/  is_611x; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI611X_AI_FIFO_DATA_REG ; 
 int /*<<< orphan*/  NI_E_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,int) ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned short data;
	unsigned int dl;

	if (!devpriv->is_611x)
		return;

	/* Check if there's a single sample stuck in the FIFO */
	if (FUNC1(dev, NI_E_STATUS_REG) & 0x80) {
		dl = FUNC2(dev, NI611X_AI_FIFO_DATA_REG);
		data = dl & 0xffff;
		FUNC0(s, &data, 1);
	}
}