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
struct ni_gpct {int /*<<< orphan*/  mite_chan; } ;
struct ni_660x_private {int /*<<< orphan*/  interrupt_lock; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {struct ni_660x_private* private; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	struct ni_660x_private *devpriv = dev->private;
	struct ni_gpct *counter = s->private;
	unsigned long flags;

	/* lock to avoid race with comedi_poll */
	FUNC2(&devpriv->interrupt_lock, flags);
	FUNC1(counter->mite_chan, s);
	FUNC3(&devpriv->interrupt_lock, flags);
	return FUNC0(s);
}