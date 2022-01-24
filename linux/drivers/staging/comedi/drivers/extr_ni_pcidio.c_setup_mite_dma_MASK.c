#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nidio96_private {int /*<<< orphan*/  mite_channel_lock; scalar_t__ di_mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct nidio96_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  prealloc_bufsz; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct nidio96_private *devpriv = dev->private;
	int retval;
	unsigned long flags;

	retval = FUNC3(dev);
	if (retval)
		return retval;

	/* write alloc the entire buffer */
	FUNC0(s, s->async->prealloc_bufsz);

	FUNC4(&devpriv->mite_channel_lock, flags);
	if (devpriv->di_mite_chan) {
		FUNC2(devpriv->di_mite_chan, 32, 32);
		FUNC1(devpriv->di_mite_chan);
	} else {
		retval = -EIO;
	}
	FUNC5(&devpriv->mite_channel_lock, flags);

	return retval;
}