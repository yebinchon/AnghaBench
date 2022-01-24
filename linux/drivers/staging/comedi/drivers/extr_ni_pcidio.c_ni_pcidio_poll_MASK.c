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
struct nidio96_private {int /*<<< orphan*/  mite_channel_lock; scalar_t__ di_mite_chan; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct nidio96_private* private; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct nidio96_private *devpriv = dev->private;
	unsigned long irq_flags;
	int count;

	FUNC3(&dev->spinlock, irq_flags);
	FUNC2(&devpriv->mite_channel_lock);
	if (devpriv->di_mite_chan)
		FUNC1(devpriv->di_mite_chan, s);
	FUNC4(&devpriv->mite_channel_lock);
	count = FUNC0(s);
	FUNC5(&dev->spinlock, irq_flags);
	return count;
}