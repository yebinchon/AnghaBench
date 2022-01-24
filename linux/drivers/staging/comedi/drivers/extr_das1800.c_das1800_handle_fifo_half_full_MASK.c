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
struct das1800_private {int /*<<< orphan*/  fifo_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct das1800_private* private; } ;

/* Variables and functions */
 scalar_t__ DAS1800_FIFO ; 
 int FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
					  struct comedi_subdevice *s)
{
	struct das1800_private *devpriv = dev->private;
	unsigned int nsamples = FUNC1(s, FIFO_SIZE / 2);

	FUNC2(dev->iobase + DAS1800_FIFO, devpriv->fifo_buf, nsamples);
	FUNC0(s, devpriv->fifo_buf, nsamples);
}