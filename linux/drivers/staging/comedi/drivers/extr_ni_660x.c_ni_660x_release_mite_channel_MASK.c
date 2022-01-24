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
struct ni_gpct {struct mite_channel* mite_chan; } ;
struct ni_660x_private {int /*<<< orphan*/  mite_channel_lock; } ;
struct mite_channel {int /*<<< orphan*/  channel; } ;
struct comedi_device {struct ni_660x_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
					 struct ni_gpct *counter)
{
	struct ni_660x_private *devpriv = dev->private;
	unsigned long flags;

	FUNC3(&devpriv->mite_channel_lock, flags);
	if (counter->mite_chan) {
		struct mite_channel *mite_chan = counter->mite_chan;

		FUNC1(dev, mite_chan->channel, counter);
		FUNC2(counter, NULL);
		FUNC0(mite_chan);
	}
	FUNC4(&devpriv->mite_channel_lock, flags);
}