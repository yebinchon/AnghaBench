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
struct das1800_private {scalar_t__ iobase2; int /*<<< orphan*/  fifo_buf; } ;
struct comedi_device {struct das1800_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAS1800_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct das1800_private *devpriv = dev->private;

	FUNC1(dev);
	if (devpriv) {
		FUNC2(devpriv->fifo_buf);
		if (devpriv->iobase2)
			FUNC3(devpriv->iobase2, DAS1800_SIZE);
	}
	FUNC0(dev);
}