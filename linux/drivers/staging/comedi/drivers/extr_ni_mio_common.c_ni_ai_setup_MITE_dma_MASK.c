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
struct ni_private {int /*<<< orphan*/  mite_channel_lock; int /*<<< orphan*/  ai_mite_chan; scalar_t__ is_628x; scalar_t__ is_6143; scalar_t__ is_611x; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  prealloc_bufsz; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	int retval;
	unsigned long flags;

	retval = FUNC3(dev);
	if (retval)
		return retval;

	/* write alloc the entire buffer */
	FUNC0(s, s->async->prealloc_bufsz);

	FUNC4(&devpriv->mite_channel_lock, flags);
	if (!devpriv->ai_mite_chan) {
		FUNC5(&devpriv->mite_channel_lock, flags);
		return -EIO;
	}

	if (devpriv->is_611x || devpriv->is_6143)
		FUNC2(devpriv->ai_mite_chan, 32, 16);
	else if (devpriv->is_628x)
		FUNC2(devpriv->ai_mite_chan, 32, 32);
	else
		FUNC2(devpriv->ai_mite_chan, 16, 16);

	/*start the MITE */
	FUNC1(devpriv->ai_mite_chan);
	FUNC5(&devpriv->mite_channel_lock, flags);

	return 0;
}